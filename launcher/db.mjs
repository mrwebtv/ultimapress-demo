import pg from 'pg'

/**
 * One Postgres for everything: the launcher's own tables (database "launcher"), the template
 * every demo copies, and one database per demo, each with its own login that can reach only it.
 */

const base = {
  host: process.env.PGHOST || 'postgres',
  port: Number(process.env.PGPORT || 5432),
  user: process.env.PGUSER || 'postgres',
  password: process.env.POSTGRES_PASSWORD,
}

export const db = new pg.Pool({ ...base, database: 'launcher', max: 5 })

/** Runs statements in another database (as the superuser). */
export async function inDatabase(database, statements) {
  const c = new pg.Client({ ...base, database })
  await c.connect()
  try {
    for (const s of statements) await c.query(s)
  } finally {
    await c.end()
  }
}

// Names are always made by the launcher (demo_ + 6 lowercase letters or digits), never from a request.
const NAME = /^demo_[a-z0-9_]{1,40}$/
export const ident = (name) => {
  if (!NAME.test(name)) throw new Error(`Bad name ${name}`)
  return `"${name}"`
}
export const literal = (s) => `'${String(s).replace(/'/g, "''")}'`

export async function setup() {
  await db.query(`
    create table if not exists meta (k text primary key, v text);
    create table if not exists visits (
      id serial primary key,
      email text not null,
      name text,
      marketing boolean not null default false,
      ip text,
      browser_key text not null,
      created_at timestamptz not null default now(),
      last_poll timestamptz not null default now(),
      status text not null default 'waiting',
      code text,
      login_token text,
      hosting_clicks int not null default 0,
      kept_downloads int not null default 0
    );
    create index if not exists visits_email on visits (lower(email), created_at);
    create index if not exists visits_ip on visits (ip, created_at);
    alter table visits add column if not exists country text;
    alter table visits add column if not exists source text;
    create table if not exists page_views (
      day date not null default current_date,
      at timestamptz not null default now(),
      visitor text not null,
      country text,
      source text
    );
    create index if not exists page_views_day on page_views (day);
    create table if not exists demos (
      code text primary key,
      status text not null,
      image text,
      db_password text,
      key text,
      created_at timestamptz not null default now(),
      assigned_at timestamptz,
      expires_at timestamptz,
      ended_at timestamptz,
      end_reason text,
      visit_id int,
      misses int not null default 0,
      kept boolean not null default false
    );
  `)
  await db.query(`
    alter table demos add column if not exists active_minutes int not null default 0;
    alter table demos add column if not exists tried text;
    create table if not exists refusals (at timestamptz not null default now(), reason text not null);
  `)
  // Demo logins can only open their own database.
  for (const d of ['launcher', 'postgres', 'template1']) {
    await db.query(`revoke connect on database ${d === 'template1' ? 'template1' : `"${d}"`} from public`).catch(() => undefined)
  }
}

export async function getMeta(k) {
  const r = await db.query('select v from meta where k = $1', [k])
  return r.rows[0]?.v ?? null
}
export async function setMeta(k, v) {
  await db.query('insert into meta (k, v) values ($1, $2) on conflict (k) do update set v = excluded.v', [k, v])
}

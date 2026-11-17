# UltimaPress free trial (tryultimapress.com)

Each visitor gets their own UltimaPress for 2 hours, with a finished starter site already in
place. The official UltimaPress is not changed: this repo builds a demo image on top of it.

## How it works

- **tryultimapress.com**: the sign-up page (email, Cloudflare Turnstile). One demo per email and
  per IP address a day. When all demos are busy, visitors wait in line and their demo opens by itself.
- **`<code>.tryultimapress.com`**: the visitor's own demo, logged in automatically by a one-time link.
- A countdown bar on the admin and the site: *Like what you've built? Run UltimaPress on your own
  server.* with **Get your VPS** (your Hostinger link), **Keep this site** and **I'm done**.
  In the last 15 minutes the bar turns red.
- A demo ends after 2 hours, after 30 minutes without the visitor, or on **I'm done**. Their site
  is saved for 7 days and can be downloaded from the end page, then put back on their own server
  with **Backups > Restore from a file**.
- Every visitor is added to Omnisend as subscribed (the line under **Try now** says so), tagged
  `ultimapress-trial`, then `clicked-hosting` and `kept-site` when they do those.
- Stats: `https://tryultimapress.com/stats` (open, totals only): demos per day, countries,
  where visitors came from (tag links with `?ref=name`), Hostinger clicks, site downloads.
- Leads: `https://tryultimapress.com/leads.csv` (any user name, `ADMIN_PASSWORD`): email, name,
  Hostinger clicks and site downloads.

## What a demo can and cannot do

Everything in UltimaPress, including connecting Claude or ChatGPT, except: Site code (uploading
code), add-ons, email settings, and changing the login or adding accounts. Uploads up to 10 MB each.
The admin menu is the classic sidebar.

## Files

| Where | What |
| --- | --- |
| `overlay/` | Files laid over the official code: demo mode (`src/demo/`), the demo site's database (`demo/site.sql`, logins and keys removed) and its images (`media/`) |
| `apply.mjs` | Copies `overlay/` and makes four small, checked edits to the official code |
| `launcher/` | Sign-up, waiting line, spare demos, routing, ending demos, leads |
| `server/` | `docker-compose.yml`, `Caddyfile` and `.env.example` for the trial server |
| `.github/workflows/images.yml` | Builds both images on every push and every night |

## Server setup (once)

1. In GitHub, **Packages**: set `ultimapress-demo` and `ultimapress-demo-launcher` to **Public**
   (they contain no secrets), so the server can download them.
2. On the server: `mkdir -p /opt/trial && cd /opt/trial`, then
   `docker run --rm -v /opt/trial:/out ghcr.io/mrwebtv/ultimapress-demo-launcher node setup.mjs`.
   It writes `docker-compose.yml`, `Caddyfile` and `.env` (with new passwords). Fill in the keys in `.env`.
3. Put the Cloudflare Origin certificate in `certs/origin.pem` and its private key in `certs/origin.key`.
4. `docker compose up -d`. The first start builds the demo template (a few minutes).
5. Firewall: allow 80 and 443 only from Cloudflare, plus SSH.

Updates: new UltimaPress versions are picked up by the nightly build; the launcher checks for a
new image every 6 hours. To update the launcher: `docker compose pull && docker compose up -d`.

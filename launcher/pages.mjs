/** The launcher's pages on tryultimapress.com. Plain HTML, no outside scripts except Turnstile. */

export const esc = (s) =>
  String(s ?? '').replace(/[&<>"']/g, (c) => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' })[c])

const css = `
:root{--bg:#0b0820;--card:#151032;--line:#2c2160;--text:#f4f2ff;--muted:#b9b2e0;--a:#5b2bff;--b:#e2369b}
*{box-sizing:border-box}
body{margin:0;min-height:100vh;background:radial-gradient(1200px 600px at 80% -10%,#2a1366 0,transparent 60%),var(--bg);color:var(--text);
  font:17px/1.6 system-ui,-apple-system,"Segoe UI",Roboto,sans-serif;display:flex;flex-direction:column}
main{flex:1;width:100%;max-width:1040px;margin:0 auto;padding:56px 16px}
.brand{display:flex;align-items:center;gap:10px;font-weight:800;font-size:20px;color:var(--text);text-decoration:none;margin-bottom:48px}
.brand img{display:block;width:60px;height:auto}
.grid{display:grid;grid-template-columns:1.1fr .9fr;gap:48px;align-items:start}
@media (max-width:860px){.grid{grid-template-columns:1fr;gap:32px}}
h1{font-size:clamp(36px,6vw,58px);line-height:1.05;margin:0 0 18px;letter-spacing:-.02em}
.lead{font-size:19px;color:var(--muted);margin:0 0 24px;max-width:34em}
ul.can{list-style:none;padding:0;margin:0 0 24px}
ul.can li{padding:6px 0 6px 30px;position:relative;color:var(--text)}
ul.can li:before{content:"";position:absolute;left:0;top:13px;width:16px;height:16px;border-radius:50%;background:linear-gradient(135deg,var(--a),var(--b))}
.card{background:var(--card);border:1px solid var(--line);border-radius:18px;padding:28px}
label{display:block;font-weight:600;margin:0 0 6px}
input[type=text],input[type=email]{width:100%;height:46px;border-radius:10px;border:1px solid var(--line);background:#0e0a26;color:var(--text);
  padding:0 14px;font:inherit;margin-bottom:16px}
input:focus-visible,button:focus-visible,a:focus-visible{outline:2px solid #fff;outline-offset:2px}
.check{display:flex;gap:10px;align-items:flex-start;font-weight:400;color:var(--muted);font-size:15px;margin:4px 0 18px}
.check input{margin-top:5px}
.btn{display:inline-flex;align-items:center;justify-content:center;height:50px;padding:0 22px;border-radius:12px;border:0;font:inherit;font-weight:700;
  color:#fff;background:linear-gradient(90deg,var(--a),var(--b));text-decoration:none;cursor:pointer}
.btn--wide{width:100%}
.btn--ghost{background:transparent;border:1px solid var(--line)}
.small{font-size:14px;color:var(--muted);margin:14px 0 0}
.slots{border-radius:12px;padding:14px 16px;margin:0 0 16px;font-size:17px;line-height:1.45;text-align:center}
.slots strong{display:block;font-size:20px;margin-bottom:2px}
.slots--busy{background:#3d3208;border:2px solid #f5c518;color:#ffe680}
.slots--full{background:#4a0f1c;border:2px solid #ff3b5c;color:#ffd0d8}
.btn:disabled{background:#3a3550;color:#8d88a8;cursor:not-allowed}
.sr{position:absolute;width:1px;height:1px;overflow:hidden;clip:rect(0 0 0 0);white-space:nowrap}
.error{background:#4a1430;border:1px solid #a3305c;border-radius:10px;padding:10px 14px;margin:0 0 16px}
.center{max-width:620px;margin:40px auto;text-align:center}
.center .lead{margin-left:auto;margin-right:auto}
.acts{display:flex;gap:12px;justify-content:center;flex-wrap:wrap;margin-top:8px}
.spin{width:44px;height:44px;border-radius:50%;border:4px solid var(--line);border-top-color:var(--b);margin:0 auto 24px;animation:s 1s linear infinite}
@keyframes s{to{transform:rotate(360deg)}}
@media (prefers-reduced-motion:reduce){.spin{animation:none}}
footer{padding:24px 16px;text-align:center;font-size:14px;color:var(--muted)}
footer a{color:var(--muted)}
`

const layout = (title, body, { head = '', note = '' } = {}) => `<!doctype html>
<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="robots" content="noindex">
<title>${esc(title)}</title><link rel="icon" href="/icon.png"><style>${css}</style>${head}</head>
<body><main><a class="brand" href="/"><img src="/logo.png" alt="" width="60" height="35">UltimaPress</a>${body}</main>
<footer><a href="https://ultimapress.com">ultimapress.com</a>${note ? ` (${esc(note)})` : ''}</footer></body></html>`

const icon = (d) =>
  `<svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.8" stroke-linecap="round" stroke-linejoin="round" aria-hidden="true">${d}</svg>`
const FEATURES = [
  ['Drag it. Drop it. Done.', 'Rearrange a whole homepage in seconds with the visual builder.', '<path d="M5 9l-3 3 3 3M9 5l3-3 3 3M15 19l-3 3-3-3M19 9l3 3-3 3M2 12h20M12 2v20"/>'],
  ['One click, whole new look.', 'Swap the template, colours and fonts and watch the entire site change.', '<circle cx="13.5" cy="6.5" r="1.5"/><circle cx="17.5" cy="10.5" r="1.5"/><circle cx="8.5" cy="7.5" r="1.5"/><circle cx="6.5" cy="12.5" r="1.5"/><path d="M12 2a10 10 0 1 0 0 20c1.1 0 2-.9 2-2 0-.5-.2-1-.5-1.3-.3-.4-.5-.8-.5-1.3 0-1.1.9-2 2-2h2.4A5.6 5.6 0 0 0 22 9.8C22 5.5 17.5 2 12 2z"/>'],
  ['Ask Claude to build a page.', 'Type what you want, and it appears.', '<path d="M12 3l1.9 5.6L19.5 10l-5.6 1.9L12 17.5l-1.9-5.6L4.5 10l5.6-1.4z"/><path d="M19 15l.8 2.2L22 18l-2.2.8L19 21l-.8-2.2L16 18l2.2-.8z"/>'],
  ['Got a wild feature idea?', 'A booking system, a members area, a property portal: on your own server, Claude builds it into your site.', '<path d="M9 18h6M10 22h4M12 2a7 7 0 0 0-4 12.7V17h8v-2.3A7 7 0 0 0 12 2z"/>'],
  ['Keep everything.', 'Download your site and put it back on your own server in a few clicks.', '<path d="M12 3v12M7 10l5 5 5-5M5 21h14"/>'],
]
const SHOTS = [
  ['/img/shot-site.jpg', 'A real website, ready to edit'],
  ['/img/shot-builder.jpg', 'The visual builder'],
  ['/img/shot-admin.jpg', 'Your dashboard'],
]

/** 60 -> "60 minutes", 120 -> "2 hours". */
const span = (m) => (m > 60 && m % 60 === 0 ? `${m / 60} hours` : `${m} minutes`)

export function landing({ siteKey, error = '', email = '', minutes, inUse = 0, max = 12, source = '', paused = false }) {
  const full = inUse >= max
  const hours = span(minutes)
  return layout(
    'Try UltimaPress free',
    `<style>
  main{max-width:1180px}
  .lp{display:grid;grid-template-columns:minmax(0,1fr) minmax(0,1.15fr);grid-template-areas:"copy show" "form show";gap:28px 56px;align-items:start}
  .lp-copy{grid-area:copy}.lp-form{grid-area:form}.lp-show{grid-area:show}
  @media (max-width:900px){.lp{grid-template-columns:1fr;grid-template-areas:"copy" "form" "show"}}
  .lp h1{font-size:clamp(38px,5.4vw,64px);margin:0 0 16px}
  .lp .lead{margin:0}
  .lp-form{background:var(--card);border:1px solid var(--line);border-radius:18px;padding:22px}
  .lp-row{display:flex;gap:10px;flex-wrap:wrap}
  .lp-row input{flex:1 1 220px;margin:0}
  .lp-row .btn{flex:0 0 auto}
  .lp-assure{display:flex;gap:16px;flex-wrap:wrap;margin:14px 0 0;font-size:14px;color:var(--text)}
  .lp-assure span{display:inline-flex;align-items:center;gap:6px}
  .lp-assure svg{color:#7ee2b8}
  .cost{margin:16px 0 0;padding:14px 16px;border-radius:12px;background:#0e0a26;border:1px solid var(--line)}
  .cost b{display:block;margin-bottom:8px}
  .cost dl{display:grid;grid-template-columns:auto 1fr;gap:6px 16px;margin:0;font-size:15px}
  .cost dt{color:var(--muted)}.cost dd{margin:0}.cost a{color:var(--text);font-weight:600}.cost strong{color:#7ee2b8}
  @media (max-width:480px){.cost dl{grid-template-columns:1fr;gap:2px}.cost dd{margin-bottom:8px}}
  .lp-form-off{grid-area:form}.lp-form-off .lp-form{opacity:.45;filter:grayscale(.6);pointer-events:none;user-select:none}
  .how{margin:24px 0 0}
  .how b{display:block;margin-bottom:10px;font-size:18px}
  .how ol{list-style:none;counter-reset:s;margin:0;padding:0;display:grid;gap:10px}
  .how li{counter-increment:s;position:relative;padding:0 0 0 40px;line-height:1.5}
  .how li::before{content:counter(s);position:absolute;left:0;top:-1px;width:28px;height:28px;border-radius:50%;display:grid;place-items:center;
    font-weight:800;font-size:14px;color:#fff;background:linear-gradient(135deg,var(--a),var(--b))}
  .how li strong{color:var(--text)}
  .how li{color:var(--muted)}
  .how-note{margin:14px 0 0;padding:12px 14px;border-left:3px solid var(--b);background:rgba(226,54,155,.08);border-radius:0 10px 10px 0;font-size:14.5px;line-height:1.5;color:var(--muted)}
  .lp-fine{font-size:12.5px;line-height:1.5;color:var(--muted);margin:14px 0 0;opacity:.85}
  .cf-turnstile{margin-top:12px}
  .frame{border-radius:16px;border:1px solid var(--line);background:#120d2c;box-shadow:0 30px 80px rgba(0,0,0,.45);overflow:hidden}
  .frame-bar{display:flex;gap:6px;padding:10px 12px;border-bottom:1px solid var(--line)}
  .frame-bar i{width:10px;height:10px;border-radius:50%;background:#3a3264}
  .slides{position:relative;aspect-ratio:16/10}
  .slides figure{position:absolute;inset:0;margin:0;opacity:0;animation:show 15s infinite}
  .slides figure:nth-child(2){animation-delay:5s}.slides figure:nth-child(3){animation-delay:10s}
  .slides img{width:100%;height:100%;object-fit:cover;display:block}
  .slides figcaption{position:absolute;left:14px;bottom:14px;padding:7px 12px;border-radius:999px;background:rgba(11,8,32,.82);font-size:14px;font-weight:600}
  @keyframes show{0%{opacity:0}4%{opacity:1}31%{opacity:1}36%{opacity:0}100%{opacity:0}}
  @media (prefers-reduced-motion:reduce){.slides figure{animation:none}.slides figure:first-child{opacity:1}}
  .feats{display:grid;grid-template-columns:repeat(auto-fit,minmax(200px,1fr));gap:14px;margin:56px 0 0}
  .feat{background:var(--card);border:1px solid var(--line);border-radius:16px;padding:20px}
  .feat svg{color:var(--b)}
  .feat h3{font-size:18px;margin:12px 0 6px}
  .feat p{margin:0;color:var(--muted);font-size:15px;line-height:1.5}
  .by{display:flex;align-items:center;gap:14px;flex-wrap:wrap;margin:48px 0 0;padding:20px;border-radius:16px;border:1px solid var(--line)}
  .by b{font-size:17px}.by a{color:var(--text)}
  .by .facts{display:flex;gap:8px;flex-wrap:wrap;margin-left:auto}
  .by .facts span{padding:6px 12px;border-radius:999px;background:var(--card);font-size:14px;color:var(--muted)}
  </style>
  <div class="lp">
    <div class="lp-copy">
      <h1>Test drive UltimaPress for free</h1>
      <p class="how-note" style="margin:0">This demo is a walkaround: it's for testing the main features, so some are switched off. For instance, getting AI to build whole new features, like a full property listing system, needs your own server, where Claude can change the code. Also, all Security tools and features are only available in the live version.</p>
      <div class="how">
        <b>Here's what you can try right now:</b>
        <ol>
          <li><strong>Connect Claude or ChatGPT.</strong> One click, under Connect AI Client.</li>
          <li><strong>Edit the homepage.</strong> This real estate homepage was built with Claude. Open Pages, then Home, and change anything yourself in the visual builder.</li>
          <li><strong>Ask AI to build a page.</strong> For example: "Add a page with 6 featured homes and a valuation form."</li>
          <li><strong>Make it yours.</strong> Change anything, try everything, enjoy.</li>
        </ol>
      </div>
    </div>
    ${
      paused
        ? ''
        : `    <form class="lp-form" method="post" action="/start">
      <input type="hidden" name="src" value="${esc(source)}">
      ${error ? `<p class="error" role="alert">${esc(error)}</p>` : ''}
      ${
        full
          ? `<div class="slots slots--full" role="status"><strong>Sorry, all ${max} demo slots are in use.</strong>A slot frees up as soon as someone finishes. This page checks every 30 seconds.</div>`
          : inUse > max / 2
            ? `<div class="slots slots--busy" role="status"><strong>${inUse} of ${max} demo slots in use</strong>Start yours while there is room.</div>`
            : ''
      }
      <label for="email" class="sr">Your email</label>
      <div class="lp-row">
        <input id="email" name="email" type="email" maxlength="200" required autocomplete="email" placeholder="Your email" value="${esc(email)}">
        <button class="btn" type="submit"${full ? ' disabled' : ''}>Try now</button>
      </div>
      <div class="cf-turnstile" data-sitekey="${esc(siteKey)}" data-theme="dark" data-callback="upChecked"></div>
      <p class="lp-assure">
        <span>${icon('<path d="M20 6L9 17l-5-5"/>')}No credit card</span>
        <span>${icon('<path d="M20 6L9 17l-5-5"/>')}Nothing to install</span>
        <span>${icon('<path d="M20 6L9 17l-5-5"/>')}Ready in seconds</span>
      </p>
      <div class="cost">
        <b>What does it cost?</b>
        <dl>
          <dt>This test drive</dt><dd><strong>Free</strong>, ${hours}</dd>
          <dt>UltimaPress</dt><dd><strong>Free</strong>, no plan, no subscription</dd>
          <dt>Your own site</dt><dd>You just need <strong>a server</strong> capable of running it. We use and recommend <a href="/go" target="_blank" rel="noopener">Hostinger VPS</a></dd>
        </dl>
      </div>
      <p class="lp-fine">By clicking Try now you agree to receive marketing emails from Mr Web about UltimaPress. You can unsubscribe at any time. Your demo and everything in it are deleted after ${hours}.</p>
    </form>`
    }${
      paused
        ? `<div class="lp-form-off"><div class="lp-form" aria-hidden="true" inert>
      <div class="lp-row"><input type="email" placeholder="Your email" disabled tabindex="-1"><button class="btn" type="button" disabled tabindex="-1">Try now</button></div>
      <p class="lp-assure">
        <span>${icon('<path d="M20 6L9 17l-5-5"/>')}No credit card</span>
        <span>${icon('<path d="M20 6L9 17l-5-5"/>')}Nothing to install</span>
        <span>${icon('<path d="M20 6L9 17l-5-5"/>')}Ready in seconds</span>
      </p>
      <div class="cost">
        <b>What does it cost?</b>
        <dl>
          <dt>This test drive</dt><dd><strong>Free</strong>, ${hours}</dd>
          <dt>UltimaPress</dt><dd><strong>Free</strong>, no plan, no subscription</dd>
          <dt>Your own site</dt><dd>You just need <strong>a server</strong> capable of running it. We use and recommend Hostinger VPS</dd>
        </dl>
      </div>
    </div>
    <div class="slots slots--full" role="status" style="margin:14px 0 0"><strong>Whoa, seems like everyone wants to test UltimaPress today.</strong>Sorry! Every demo slot is in use right now. Check back later today.</div></div>`
        : ''
    }
    <div class="lp-show">
      <div class="frame"><div class="frame-bar"><i></i><i></i><i></i></div>
        <div class="slides">${SHOTS.map(([src, cap], i) => `<figure><img src="${src}" alt="${esc(cap)}"${i ? ' loading="lazy"' : ''} width="1200" height="750"><figcaption>${esc(cap)}</figcaption></figure>`).join('')}</div>
      </div>
    </div>
  </div>
  <div class="feats">${FEATURES.map(([t, d, ic]) => `<div class="feat">${icon(ic)}<h3>${esc(t)}</h3><p>${esc(d)}</p></div>`).join('')}</div>
  <div class="by">
    <div><b>Built by Dave from Mr Web.</b> <a href="https://www.youtube.com/@mr_web">See how on YouTube</a></div>
    <div class="facts"><span>Free to use</span><span>Runs on your own server</span><span>No plugins to buy</span></div>
  </div>`,
    {
      note: `AZ${String(inUse).padStart(2, '0')}-${max}`,
      head:
        '<script src="https://challenges.cloudflare.com/turnstile/v0/api.js" async defer></script>' +
        // Pressing Try now before the check has finished waits for it, instead of sending an empty check.
        `<script>
document.addEventListener('submit',function(e){var f=e.target;if(!f.classList||!f.classList.contains('lp-form'))return;var t=f.querySelector('[name="cf-turnstile-response"]');if(t&&t.value)return;e.preventDefault();f.dataset.waiting='1';var b=f.querySelector('button[type="submit"]');if(b){b.disabled=true;b.textContent='Checking you are human…'}setTimeout(function(){if(f.dataset.waiting){f.removeAttribute('data-waiting');f.submit()}},10000)});
(function(){var src=${JSON.stringify(source).replace(/</g,'\\u003c')},t=null,sent=false;function go(){if(sent||document.visibilityState!=='visible')return;clearTimeout(t);t=setTimeout(function(){if(sent||document.visibilityState!=='visible')return;sent=true;fetch('/api/seen',{method:'POST',headers:{'x-up-seen':'1','content-type':'text/plain'},body:src,keepalive:true}).catch(function(){})},3000)}document.addEventListener('visibilitychange',go);go()})();
window.upChecked=function(){var f=document.querySelector('form.lp-form[data-waiting]');if(f){f.removeAttribute('data-waiting');f.submit()}};
</script>` +
        (full ? '<meta http-equiv="refresh" content="30">' : ''),
    },
  )
}

export function waiting() {
  return layout(
    'Starting your demo',
    `<div class="center">
  <div class="spin" aria-hidden="true"></div>
  <h1 style="font-size:36px">Starting your demo</h1>
  <p class="lead" id="msg" role="status">This takes a few seconds.</p>
  </div>
  <script>
  (function poll(){
    fetch('/api/visit',{credentials:'same-origin'}).then(function(r){return r.json()}).then(function(d){
      var m=document.getElementById('msg');
      if(d.url){m.textContent='Ready. Opening your site…';location.href=d.url;return}
      if(d.status==='gone'||d.status==='none'){location.href='/';return}
      if(d.status==='started'){location.href=d.site||'/';return}
      m.textContent=d.position>1?'All demos are in use right now. You are number '+d.position+' in line, and this page opens your demo as soon as one is free.':'This takes a few seconds.';
      setTimeout(poll,3000)
    }).catch(function(){setTimeout(poll,5000)})
  })();
  </script>`,
  )
}

export function ended({ code, canDownload, hosting, minutes }) {
  return layout(
    'Your demo has ended',
    `<div class="center">
  <h1 style="font-size:40px">Your demo has ended</h1>
  <p class="lead">${
    canDownload
      ? 'Your site is saved for 7 days. Install UltimaPress on your own server, then go to Backups, Restore from a file, and upload it. It comes back exactly as you left it.'
      : `Demos are deleted after ${span(minutes)}. Install UltimaPress on your own server to keep building.`
  }</p>
  <div class="acts">
    <a class="btn" href="${esc(hosting)}">Get your VPS</a>
    ${canDownload ? `<a class="btn btn--ghost" href="/kept/${esc(code)}">Download my site</a>` : ''}
  </div>
  <p class="small" style="margin-top:28px"><a href="https://ultimapress.com/docs" style="color:var(--muted)">How to install UltimaPress</a></p>
  </div>`,
  )
}

export function message(title, text, { hosting } = {}) {
  return layout(
    title,
    `<div class="center"><h1 style="font-size:36px">${esc(title)}</h1><p class="lead">${esc(text)}</p>
  <div class="acts">${hosting ? `<a class="btn" href="${esc(hosting)}">Get your VPS</a>` : ''}<a class="btn btn--ghost" href="https://ultimapress.com">ultimapress.com</a></div></div>`,
  )
}

const flag = () => ''
const pct = (a, b) => (b ? `${Math.round((a / b) * 100)}%` : '0%')
const table = (head, rows) =>
  `<table><thead><tr>${head.map((h, i) => `<th${i ? ' class="n"' : ''}>${esc(h)}</th>`).join('')}</tr></thead><tbody>${
    rows.length ? rows.map((r) => `<tr>${r.map((c, i) => `<td${i ? ' class="n"' : ''}>${c}</td>`).join('')}</tr>`).join('') : `<tr><td colspan="${head.length}">Nothing yet</td></tr>`
  }</tbody></table>`

/** The owner's stats page (/stats). */
export function stats({ now, totals, views, use, refusals = [], days, countries, sources, endings, max }) {
  const tile = (label, value, sub = '') => `<div class="tile"><span>${esc(label)}</span><b>${esc(value)}</b>${sub ? `<small>${esc(sub)}</small>` : ''}</div>`
  return layout(
    'Trial stats',
    `<style>
  main{max-width:1100px}
  .tiles{display:grid;grid-template-columns:repeat(auto-fit,minmax(170px,1fr));gap:14px;margin:0 0 32px}
  .tile{background:var(--card);border:1px solid var(--line);border-radius:14px;padding:16px}
  .tile span{display:block;color:var(--muted);font-size:14px}.tile b{display:block;font-size:30px;line-height:1.2}.tile small{color:var(--muted);font-size:13px}
  h2{font-size:22px;margin:32px 0 12px}
  .two{display:grid;grid-template-columns:1fr 1fr;gap:28px}@media (max-width:820px){.two{grid-template-columns:1fr}}
  .scroll{overflow-x:auto}
  table{width:100%;border-collapse:collapse;font-size:15px}
  th,td{padding:8px 10px;border-bottom:1px solid var(--line);text-align:left;white-space:nowrap}
  th{color:var(--muted);font-weight:600}.n{text-align:right;font-variant-numeric:tabular-nums}
  </style>
  <h1 style="font-size:40px">Trial stats</h1>
  <p class="lead" style="margin-bottom:24px">Visitors to the sign-up page (counted once a day, no cookies) and demos started. Times are UTC. <a href="/leads.csv" style="color:var(--muted)">Download the leads (CSV)</a></p>
  <div class="tiles">
    ${tile('In use now', `${now.assigned} of ${max}`, `${now.spare} ready, ${now.waiting} waiting`)}
    ${tile('Visitors today', views.today, `${views.views_today} page views`)}
    ${tile('Visitors, last 7 days', views.week)}
    ${tile('Visitors, last 30 days', views.month, `${pct(totals.month, views.month)} started a demo`)}
    ${tile('Demos today', totals.today)}
    ${tile('Demos, last 7 days', totals.week)}
    ${tile('Demos, last 30 days', totals.month)}
    ${tile('Demos, all time', totals.all, `${totals.signups} sign-ups`)}
    ${tile('Clicked Get your VPS', pct(totals.clicked, totals.all), `${totals.clicked} ${totals.clicked === 1 ? 'person' : 'people'}`)}
    ${tile('Downloaded their site', pct(totals.kept, totals.all), `${totals.kept} ${totals.kept === 1 ? 'person' : 'people'}`)}
  </div>
  <h2>Last 14 days</h2>
  <div class="scroll">${table(
    ['Day', 'Visitors', 'Demos', 'Clicked VPS', 'Downloaded site'],
    days.map((d) => [esc(d.day), d.visitors, `${d.demos} (${pct(d.demos, d.visitors)})`, `${d.clicked} (${pct(d.clicked, d.demos)})`, `${d.kept} (${pct(d.kept, d.demos)})`]),
  )}</div>
  <div class="two">
    <div><h2>Countries, last 30 days</h2><div class="scroll">${table(
      ['Country', 'Visitors', 'Demos', 'Clicked VPS'],
      countries.map((c) => [`${flag(c.country)}${esc(c.country || 'Unknown')}`, c.visitors, c.demos, `${c.clicked} (${pct(c.clicked, c.demos)})`]),
    )}</div></div>
    <div><h2>Where they came from, last 30 days</h2><div class="scroll">${table(
      ['Source', 'Visitors', 'Demos', 'Clicked VPS'],
      sources.map((c) => [esc(c.source || 'direct'), c.visitors, c.demos, `${c.clicked} (${pct(c.clicked, c.demos)})`]),
    )}</div></div>
  </div>
  <h2>Real use, last 30 days</h2>
  <p class="small" style="margin:-4px 0 14px">Minutes with the demo in front of them and moving, clicking, typing or scrolling. An open tab left alone does not count.</p>
  <div class="tiles">
    ${tile('Average active time', `${use.avg} min`, `${use.n} demos`)}
    ${tile('Median active time', `${use.median} min`, 'half used it less, half more')}
  </div>
  <div class="two">
    <div><div class="scroll">${table(
      ['Active time', 'Demos'],
      [
        ['Under 5 min', use.b1],
        ['5 to 15 min', use.b2],
        ['15 to 30 min', use.b3],
        ['30 to 60 min', use.b4],
        ['Over an hour', use.b5],
      ].map(([l, n]) => [esc(l), `${n} (${pct(n, use.n)})`]),
    )}</div></div>
    <div><div class="scroll">${table(
      ['What they tried', 'Demos'],
      [
        ['Opened the visual builder', use.builder],
        ['Published a page', use.published],
        ['Wrote a post', use.post],
        ['Connected Claude or ChatGPT', use.ai],
        ['Downloaded their site', use.kept],
        ['Clicked Get your VPS', totals.clicked],
      ].map(([l, n]) => [esc(l), `${n} (${pct(n, use.n)})`]),
    )}</div></div>
  </div>
  <h2>Sign-ups refused</h2>
  <div class="scroll" style="max-width:640px">${table(
    ['Why', 'Today', 'Last 30 days'],
    refusals.map((r) => [
      esc(
        {
          check: 'Human check failed or not done',
          email: 'Email not valid',
          full: 'All demo slots in use',
          'limit-email': 'Already had a demo today (email)',
          'limit-ip': 'Already had a demo today (same connection)',
        }[r.reason] || r.reason,
      ),
      r.today,
      r.month,
    ]),
  )}</div>
  <h2>How demos ended, last 30 days</h2>
  <div class="scroll" style="max-width:520px">${table(['Reason', 'Demos'], endings.map((e) => [esc(e.reason), e.n]))}</div>
  <p class="small" style="margin-top:28px">Tag your links to see them here: <code>https://tryultimapress.com/?ref=youtube-booking-video</code></p>`,
  )
}

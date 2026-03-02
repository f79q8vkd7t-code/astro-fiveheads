/* src/styles/global.css */

/* -----------------------------
   Base / Reset
------------------------------ */
*,
*::before,
*::after { box-sizing: border-box; }

html {
  scroll-behavior: smooth;
  color-scheme: dark;
}

body {
  margin: 0;
  min-height: 100vh;
  font-family: ui-sans-serif, system-ui, -apple-system, Segoe UI, Roboto, Helvetica, Arial, "Apple Color Emoji", "Segoe UI Emoji";
  background: radial-gradient(1200px 700px at 20% 0%, rgba(255,47,179,.14), transparent 60%),
              radial-gradient(900px 600px at 90% 10%, rgba(92,77,255,.18), transparent 55%),
              linear-gradient(180deg, #07060c 0%, #05040a 100%);
  color: var(--fg);
}

img, video {
  max-width: 100%;
  display: block;
}

a {
  color: inherit;
  text-decoration: none;
}

button, input, textarea, select {
  font: inherit;
  color: inherit;
}

code {
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
  font-size: 0.95em;
  padding: .14em .38em;
  border-radius: 10px;
  border: 1px solid var(--line);
  background: rgba(255,255,255,.04);
}

/* Reduce motion */
@media (prefers-reduced-motion: reduce) {
  html { scroll-behavior: auto; }
  * { animation-duration: 0.001ms !important; animation-iteration-count: 1 !important; transition-duration: 0.001ms !important; }
}

/* -----------------------------
   Theme tokens
------------------------------ */
:root{
  --bg: #06050b;
  --fg: rgba(246,244,255,.92);
  --muted: rgba(246,244,255,.70);
  --dim: rgba(246,244,255,.52);

  --accent: #ff2fb3;
  --accent2: #5c4dff;

  --line: rgba(246,244,255,.14);
  --line2: rgba(246,244,255,.22);

  --card: rgba(255,255,255,.03);
  --card2: rgba(255,255,255,.05);

  --shadow: 0 18px 60px rgba(0,0,0,.45);
}

/* -----------------------------
   Layout helpers
------------------------------ */
.container{
  width: min(1100px, 92vw);
  margin: 0 auto;
}

.row{
  display:flex;
  align-items:center;
  justify-content: space-between;
  gap: 14px;
}

.section{
  padding: 64px 0;
}

.h2{
  font-size: clamp(26px, 3.2vw, 44px);
  letter-spacing: .08em;
  text-transform: uppercase;
  margin: 0 0 18px 0;
}

.p{
  margin: 0;
  line-height: 1.65;
  color: var(--muted);
}

.small{
  font-size: 12px;
  letter-spacing: .24em;
  text-transform: uppercase;
  color: var(--dim);
}

.hr{
  height: 1px;
  width: 100%;
  background: linear-gradient(90deg, transparent, var(--line), transparent);
  margin: 18px 0;
}

/* -----------------------------
   Nav
------------------------------ */
.nav{
  position: sticky;
  top: 0;
  z-index: 50;
  border-bottom: 1px solid transparent;
  background: rgba(6,5,11,.15);
  backdrop-filter: blur(10px);
}

.nav.scrolled{
  background: rgba(6,5,11,.72);
  border-bottom: 1px solid var(--line);
}

.logo{
  font-weight: 900;
  letter-spacing: .22em;
  text-transform: uppercase;
  font-size: 14px;
  padding: 18px 0;
}

.links{
  display:flex;
  align-items:center;
  gap: 14px;
  flex-wrap: wrap;
  padding: 10px 0;
}

.links a{
  font-size: 12px;
  letter-spacing: .22em;
  text-transform: uppercase;
  color: var(--muted);
  padding: 10px 10px;
  border-radius: 999px;
  border: 1px solid transparent;
}

.links a:hover{
  color: var(--fg);
  border-color: rgba(255,47,179,.35);
  background: rgba(255,255,255,.02);
}

/* -----------------------------
   Buttons / Cards
------------------------------ */
.card{
  border: 1px solid var(--line);
  border-radius: 18px;
  background: var(--card);
  box-shadow: var(--shadow);
}

.btn{
  display:inline-flex;
  align-items:center;
  justify-content:center;
  gap: 10px;
  padding: 12px 14px;
  border-radius: 16px;
  border: 1px solid var(--line);
  background: rgba(255,255,255,.03);
  box-shadow: 0 12px 40px rgba(0,0,0,.35);
  cursor: pointer;
}

.btn:hover{
  border-color: rgba(255,47,179,.55);
  transform: translateY(-1px);
}

.btn.primary{
  border-color: rgba(255,47,179,.55);
  background: linear-gradient(135deg, rgba(255,47,179,.18), rgba(92,77,255,.10));
}

.btn.primary:hover{
  border-color: rgba(255,47,179,.85);
}

/* bigger social buttons */
.btn.big{
  padding:14px 18px;
  font-weight:800;
  letter-spacing:.18em;
  text-transform:uppercase;
}

/* -----------------------------
   Hero (full-bleed)
------------------------------ */
.heroFull{
  position: relative;
  height: min(88vh, 760px);
  min-height: 520px;
  width: 100%;
  overflow: hidden;
  border-bottom: 1px solid rgba(246,244,255,.08);
}

.heroFull > img{
  position:absolute;
  inset:0;
  width:100%;
  height:100%;
  object-fit: cover;
  object-position: 50% 30%;
  filter: saturate(1.02) contrast(1.05);
  transform: scale(1.02);
}

.heroFull::after{
  content:"";
  position:absolute;
  inset:0;
  background:
    radial-gradient(1000px 600px at 20% 0%, rgba(255,47,179,.22), transparent 60%),
    radial-gradient(900px 600px at 90% 10%, rgba(92,77,255,.20), transparent 55%),
    linear-gradient(180deg, rgba(0,0,0,.15) 0%, rgba(0,0,0,.55) 70%, rgba(0,0,0,.70) 100%);
  pointer-events:none;
}

.heroFull .overlay{
  position: relative;
  z-index: 2;
  height: 100%;
  width: min(1100px, 92vw);
  margin: 0 auto;
  display:flex;
  flex-direction: column;
  justify-content: flex-end;
  padding: 88px 0 42px;
  gap: 18px;
  align-items: flex-start;
  text-align: left;
}

/* -----------------------------
   HERO triple headline (IMPROVED)
------------------------------ */
.heroStack{
  display:flex;
  flex-direction:column;
  align-items:flex-start;
  gap:0;
  width:min(92vw, 1100px);
}

.heroLine{
  margin:0;
  padding:0;
  text-transform:uppercase;
  white-space:nowrap;
  line-height:.78;
  font-kerning: normal;
  font-feature-settings: "kern" 1, "liga" 1;
  text-shadow:0 22px 80px rgba(0,0,0,.85);
  user-select:none;
  text-rendering: geometricPrecision;
}

.heroLineTop{
  font-size: clamp(16px, 2.0vw, 26px);
  font-weight: 600;
  color: var(--accent);
  opacity: .95;
  letter-spacing: .34em;
  margin-bottom: -0.20em;
}

.heroLineMid{
  font-size: clamp(36px, 4.8vw, 68px);
  font-weight: 800;
  color: rgba(246,244,255,.94);
  letter-spacing: .20em;
  margin-bottom: -0.18em;
}

.heroLineBot{
  font-size: clamp(58px, 8.8vw, 140px);
  font-weight: 950;
  color: var(--fg);
  letter-spacing: .13em;
  -webkit-text-stroke: clamp(1px, 0.18vw, 2px) rgba(255,47,179,.65);
}

@media (max-width: 480px){
  .heroLineTop{ letter-spacing: .28em; }
  .heroLineMid{ letter-spacing: .16em; }
  .heroLineBot{ letter-spacing: .10em; }
}

/* hero badges */
.heroBadges{
  display:flex;
  gap: 10px;
  flex-wrap: wrap;
  align-items:center;
}

.badge{
  display:inline-flex;
  align-items:center;
  padding: 10px 12px;
  border-radius: 999px;
  border: 1px solid var(--line);
  background: rgba(0,0,0,.25);
  font-size: 12px;
  letter-spacing: .20em;
  text-transform: uppercase;
  color: rgba(246,244,255,.82);
}

.badge.hot{
  border-color: rgba(255,47,179,.65);
  background: rgba(255,47,179,.12);
  color: rgba(255,255,255,.92);
}

/* -----------------------------
   Photo strip (marquee)
------------------------------ */
.strip{
  border-top: 1px solid rgba(246,244,255,.08);
  border-bottom: 1px solid rgba(246,244,255,.08);
  background: rgba(255,255,255,.02);
  overflow:hidden;
}

.stripTrack{
  display:flex;
  gap: 14px;
  padding: 12px 0;
  width: max-content;
  animation: stripMarquee 28s linear infinite;
}

.strip:hover .stripTrack{ animation-play-state: paused; }

@keyframes stripMarquee{
  from { transform: translateX(0); }
  to   { transform: translateX(-50%); }
}

.stripItem{
  display:block;
  width: 240px;
  height: 140px;
  border-radius: 18px;
  overflow:hidden;
  border: 1px solid var(--line);
  background: rgba(255,255,255,.02);
  box-shadow: 0 16px 40px rgba(0,0,0,.35);
  flex: 0 0 auto;
}

.stripItem img{
  width:100%;
  height:100%;
  object-fit: cover;
  object-position: 50% 22%;
  filter: saturate(1.06) contrast(1.06);
}

/* -----------------------------
   About pills
------------------------------ */
.pill{
  display:inline-flex; align-items:center;
  padding:10px 14px; border-radius:999px;
  border:1px solid var(--line);
  background: rgba(255,255,255,.02);
  font-size:12px; letter-spacing:.22em; text-transform:uppercase;
  color: rgba(246,244,255,.78);
}

/* -----------------------------
   Photo grid (index + gallery)
------------------------------ */
.photoGrid{
  display:grid;
  grid-template-columns: repeat(auto-fit, minmax(220px, 1fr));
  gap: 14px;
}

.photoItem{
  border:1px solid var(--line);
  border-radius: 18px;
  overflow:hidden;
  background: rgba(255,255,255,.02);
  box-shadow: 0 18px 50px rgba(0,0,0,.35);
  aspect-ratio: 4 / 5;
  display:block;
  padding:0;
}

button.photoItem{
  cursor: zoom-in;
  appearance: none;
  border:1px solid var(--line);
}

.photoItem img{
  width:100%;
  height:100%;
  object-fit: cover;
  object-position: 50% 22%;
  display:block;
  filter: saturate(1.06) contrast(1.06);
}

.photoItem:hover{
  border-color: rgba(255,47,179,.55);
  transform: translateY(-1px);
}

/* -----------------------------
   Gallery modal (dialog)
------------------------------ */
dialog.modal{
  width: min(980px, 92vw);
  border: 1px solid var(--line);
  border-radius: 22px;
  padding: 0;
  background: rgba(8,7,14,.92);
  box-shadow: 0 30px 120px rgba(0,0,0,.65);
}

dialog.modal::backdrop{
  background: rgba(0,0,0,.68);
  backdrop-filter: blur(6px);
}

dialog.modal .inner{
  padding: 14px;
}

dialog.modal header{
  display:flex;
  align-items:center;
  justify-content: space-between;
  gap: 12px;
  padding: 8px 8px 12px;
}

#close{
  padding: 10px 12px;
  border-radius: 14px;
  border: 1px solid var(--line);
  background: rgba(255,255,255,.03);
  cursor: pointer;
}

#close:hover{
  border-color: rgba(255,47,179,.55);
}

#modalImg{
  width: 100%;
  height: auto;
  border-radius: 18px;
  border: 1px solid rgba(246,244,255,.10);
}

/* -----------------------------
   Footer
------------------------------ */
.footerRow{
  display:flex;
  align-items:center;
  justify-content: space-between;
  gap:16px;
  flex-wrap:wrap;
  padding-bottom:24px;
}

.footerLinks{
  display:flex;
  gap:14px;
  flex-wrap:wrap;
}

.footerLinks a{
  font-size:12px;
  letter-spacing:.26em;
  text-transform:uppercase;
  color: var(--muted);
}

.footerLinks a:hover{ color: var(--fg); }

/* -----------------------------
   Small screens polish
------------------------------ */
@media (max-width: 700px){
  .heroFull{
    min-height: 520px;
    height: min(86vh, 720px);
  }
  .links a{
    padding: 8px 8px;
  }
  .section{
    padding: 54px 0;
  }
}
# FIVEHEADS – Astro Band Template (Cloudflare Pages)

## Lokal starten
```bash
npm install
npm run dev
```

## Inhalte anpassen
- `src/config/site.ts` → Bandname, Social Links, Kontakt-Mail
- `src/data/shows.ts` → Gigs
- `src/assets/gallery/` → Fotos (jpg/png/webp/avif)
- Audio: lege eine Datei nach `public/audio/song.mp3` (oder ersetze `public/audio/song.wav`)

## Cloudflare Pages
Settings:
- Build command: `npm run build`
- Output directory: `dist`


## Hero & Photo Strip
- Hero: `public/hero.jpg` ersetzen
- Photo strip: `public/strip/` Bilder ersetzen (oder in `src/components/PhotoStrip.astro` Liste anpassen)

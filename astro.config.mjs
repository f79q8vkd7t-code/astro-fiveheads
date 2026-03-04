import { defineConfig } from "astro/config";
import sitemap from "@astrojs/sitemap";

export default defineConfig({
  site: "https://five-heads.de",
  integrations: [sitemap()],
});

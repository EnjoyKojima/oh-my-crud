// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  devtools: { enabled: true },
    vite: {
    server: {
      // In my case I use Nginx reverse proxy
      // with self signet certificate (mkcert)
      // so I just want this works on localhost:3000
      // but these settings ignoring. You can check hmr is false
      // in 'vite:configResolved' hook
      // And the most efficient and elegant way to fix it is
      // override vite config in 'vite:extendConfig' hook below
      hmr: {
        port:5173,
        clientPort: 443,
        protocol: 'wss',
        path: 'hmr/',
      },
    },
  },
  hooks: {
    'vite:extendConfig' (viteInlineConfig, env) {
      viteInlineConfig.server = {
        ...viteInlineConfig.server,
        hmr: {
          port:5173,
          clientPort: 443,
          protocol: 'wss',
          path: 'hmr/',
        },
      }
    },
  },
})

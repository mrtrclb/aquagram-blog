# Aquagram Blog

blog.aquagram.com.tr'nin yayın deposu. Burada içerik yok:

- Yazılar Aquagram yönetim panelindeki **Blog** bölümünden yazılır (Supabase `blog_posts` tablosu).
- Derleyici ana depoda: `mrtrclb/aquatakas-mvp` → `blog/` klasörü.
- Yayın: **Cloudflare Pages** (proje: aquagram-blog). Derleme komutu `bash cf-build.sh`, çıktı klasörü `site`.
- Anında yayın: `blog_posts` tablosunda bir değişiklik olunca Supabase Database Webhook, Cloudflare'in "deploy hook" adresini çağırır; blog ~1 dk içinde güncellenir.
- Elle yayın: Cloudflare → Workers & Pages → aquagram-blog → Deployments → "Retry deployment" (ya da bu depoya herhangi bir commit).

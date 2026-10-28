# Aquagram Blog

blog.aquagram.com.tr'nin yayın deposu. Burada içerik ya da kod yok:

- Yazılar Aquagram yönetim panelindeki **Blog** bölümünden yazılır (Supabase `blog_posts` tablosu).
- Derleyici ana depoda: `mrtrclb/aquatakas-mvp` → `blog/` klasörü.
- `.github/workflows/yayin.yml` 15 dakikada bir siteyi derler; içerik değiştiyse GitHub Pages'e yayınlar.
- Elle yayın: Actions → "Blog yayını" → Run workflow.

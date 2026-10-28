#!/usr/bin/env bash
# Cloudflare Pages derleme betiği (Build command: bash cf-build.sh · Output: site)
# Derleyici kodu ana depoda durur (mrtrclb/aquatakas-mvp → blog/); yalnız gereken dosyalar çekilir.
# Yazılar Supabase'den okunur; veritabanına ulaşılamazsa derleme hata verir ve eski blog yayında kalır.
set -euo pipefail
rm -rf kaynak site
git clone --quiet --depth 1 --filter=blob:none --sparse https://github.com/mrtrclb/aquatakas-mvp kaynak
git -C kaynak sparse-checkout set --no-cone /blog/ /public/favicon.svg '/public/google*.html' /src/lib/supabase.js
node kaynak/blog/build.mjs site
echo "Blog derlendi: $(cat site/surum.txt 2>/dev/null || echo '?')"

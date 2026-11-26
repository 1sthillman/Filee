# Manav Sayım - PWA

Manav ve market sayım, sevkiyat takip uygulaması. Progressive Web App olarak çalışır.

## Özellikler

- ✅ Çevrimdışı çalışma (Service Worker)
- ✅ Ana ekrana eklenebilir
- ✅ Sesli asistan (Web Speech API)
- ✅ TTS (Türkçe ses okuma)
- ✅ Barkod/QR okuyucu (kamera)
- ✅ Excel, PDF, CSV dışa aktarma
- ✅ Dosya paylaşma (WhatsApp, e-posta, Drive)
- ✅ Veri yerel (localStorage)

## Kullanım

### Web'den:
1. https://KULLANICI.github.io/DEPO adresini aç
2. Chrome menü > "Uygulamayı yükle" veya "Ana ekrana ekle"
3. Artık uygulama gibi kullanabilirsin

### Geliştirme:
```powershell
# Lokal test
cd c:\FiLE
npx serve docs
# http://localhost:3000 adresinden aç
```

## Yayınlama

GitHub Pages otomatik yayınlanır:
- Repo: Settings > Pages > Source: `main` branch, `/docs` folder
- Adres: https://KULLANICI.github.io/DEPO

## Teknik

- Vanilla JS (framework yok)
- 268 KB tek HTML dosyası
- Service Worker (çevrimdışı cache)
- Web Speech API (STT/TTS)
- MediaDevices API (kamera)
- Web Share API (dosya paylaşma)
- Canvas API (PDF/grafik)

## Lisans

MIT

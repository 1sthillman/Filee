# Manav Sayım PWA Deployment

## 1. Git Commit ve Push

```powershell
cd c:\FiLE

# docs/ klasörünü ve ikonları ekle
git add docs/
git add .gitignore

# Commit
git commit -m "PWA: Manav Sayım uygulaması Progressive Web App'e dönüştürüldü

- Web Speech API (TTS + STT) ile sesli asistan
- Service Worker ile çevrimdışı çalışma
- Ana ekrana eklenebilir (manifest)
- Dosya paylaşma (Web Share API)
- Capacitor bağımlılığı kaldırıldı
- 192/512/maskable ikonlar eklendi"

# Push
git push origin main
```

## 2. GitHub Pages Ayarları

1. https://github.com/1sthillman/Filee/settings/pages adresine git
2. **Source** bölümünde:
   - Branch: `main`
   - Folder: `/docs`
3. **Save** butonuna bas
4. 1-2 dakika bekle

## 3. PWA URL

Yayın adresi: **https://1sthillman.github.io/Filee/**

## 4. Test Adımları (Android Chrome)

### A. İlk Kurulum (internette)
1. ✅ Chrome'da https://1sthillman.github.io/Filee/ aç
2. ✅ Menü (⋮) > "Uygulamayı yükle" veya "Ana ekrana ekle"
3. ✅ Ana ekranda ikon görünmeli
4. ✅ İkona dokun, uygulama tam ekran açılmalı

### B. Çevrimdışı Test
1. ✅ Uygulamayı aç (internette)
2. ✅ Bir sayım gir (örn: Domates 5 koli)
3. ✅ Uçak modunu aç
4. ✅ Uygulamayı kapat ve tekrar aç
   - **BEKLENTİ:** Açılmalı, sayım görünmeli
5. ✅ Yeni sayım ekle
   - **BEKLENTİ:** Çalışmalı, localStorage'da
6. ✅ Uçak modunu kapat, sayfayı yenile
   - **BEKLENTİ:** Veriler kaybolmamalı

### C. Sesli Asistan
1. ✅ Dalgalı ikon (🌊) > "Dinliyorum" sesini duymalısın
2. ✅ "Domates on iki koli" de
   - **BEKLENTİ:** Algılanıp kaydedilmeli
3. ✅ Asistan yanıt vermeli: "Domates on iki koli eklendi"
4. ✅ Asistanı kapat
5. ✅ **Çevrimdışı test:**
   - Uçak modu aç
   - Asistanı aç
   - **BEKLENTİ:** "İnternet bağlantısı gerekli" veya çevrimdışı tanıma çalışmalı

### D. Mikrofon (Arama Kutusu)
1. ✅ Ürünler sekmesi > Arama kutusu > Mikrofon ikonu
2. ✅ "Domates" de
   - **BEKLENTİ:** Arama kutusuna yazılmalı
3. ✅ **Çevrimdışı:** Uçak modunda dene
   - **BEKLENTİ:** Hata mesajı: "Çevrimdışı ses tanıma bu cihazda yok..."

### E. TTS (Sesli Okuma)
1. ✅ Asistanı aç
2. ✅ Asistan konuştuğunda ses duymalısın
3. ✅ Ayarlar > Ses > Hız değiştir
   - **BEKLENTİ:** Hız değişmeli
4. ✅ **Ses listesi boşsa:**
   - "Cihaz varsayılan sesi" seçeneği görünmeli
   - Yine de konuşmalı (voice=null, sadece lang='tr-TR')

### F. Excel/PDF Paylaşma
1. ✅ Sayım > "Excel olarak hazırla"
2. ✅ "Paylaş" butonu
   - **BEKLENTİ:** Paylaşım menüsü açılmalı (WhatsApp, Drive, Gmail...)
3. ✅ WhatsApp seç > dosya iletilmeli
4. ✅ "Cihaza kaydet" butonu
   - **BEKLENTİ:** Downloads klasörüne indirilmeli
5. ✅ "Aç" butonu
   - **BEKLENTİ:** Yeni sekmede açılmalı veya indirmeli

### G. Kamera (Barkod)
1. ✅ Ortadaki turuncu kamera butonu
2. ✅ Kamera izni iste
3. ✅ Barkod tara
   - **BEKLENTİ:** Algılayıp ürün bulmalı
4. ✅ Fener butonu (varsa)
   - **BEKLENTİ:** Flash açılmalı

### H. Veri Yedekleme (ÖNEMLI!)
1. ✅ Eski APK varsa:
   - APK'yı aç
   - Menü (⋯) > Veri > "Yedek al" (JSON indir)
   - Dosyayı güvenli yere kaydet
2. ✅ PWA'da:
   - Menü > Veri > "Veri içe aktar"
   - JSON dosyasını seç
   - **BEKLENTİ:** Tüm veriler gelmeli
3. ✅ PWA'da yedek al, test et

## 5. Sorun Giderme

### Service Worker güncellenmedi
```powershell
# Chrome'da:
# F12 (DevTools) > Application > Service Workers > "Unregister"
# Sayfayı yenile
```

### Çevrimdışı çalışmıyor
```powershell
# Chrome'da:
# F12 > Application > Cache Storage
# "manav-v1" var mı kontrol et
# Yoksa: internette bir kez aç, sayfayı yenile
```

### Sesler yüklenmiyor
```powershell
# Chrome'da:
# F12 > Console
# "Türkçe ses paketi yükleyin" yazıyorsa:
# Android Ayarlar > Erişilebilirlik > Metin okuma çıkışı
# "Türkçe" dil paketi indir
```

### PWA güncelleme
```powershell
# Kod değişince:
# sw.js'de CACHE_VERSION'ı değiştir: 'manav-v2'
# Git commit + push
# Kullanıcı sayfayı yenilediğinde:
# "Yeni sürüm hazır. Sayfayı yenileyin" bildirimi gelir
```

## 6. Chrome DevTools ile Uzaktan Debug

### Telefon loglarını görmek için:
1. Telefonda: Ayarlar > Geliştirici seçenekleri > USB hata ayıklama AÇ
2. USB ile PC'ye bağla
3. PC'de Chrome: `chrome://inspect`
4. Telefondaki Manav PWA'yı seç
5. Console'da tüm hataları görürsün

### Offline test:
```powershell
# Chrome DevTools (F12) > Network tab
# "Offline" checkbox'ı işaretle
# Sayfayı yenile - çalışmalı
```

## 7. Performans

- **İlk yükleme:** ~270 KB (index.html + ikonlar)
- **Çevrimdışı:** Service Worker cache'ten ~0 ms
- **localStorage:** Sınırsız sayım/sevkiyat (5-10 MB'a kadar)
- **Ses tanıma:** İnternet gerekir (cihaz desteği varsa offline)
- **TTS:** Her zaman çalışır (cihaz sesi kullanır)

## Başarı Kriterleri

✅ Tüm testler geçti
✅ Çevrimdışı açılıyor
✅ Sesli asistan çalışıyor
✅ Dosya paylaşma çalışıyor
✅ Veriler kaybolmuyor
✅ APK'dan veri transfer edildi

## NOT: APK'dan PWA'ya Geçiş

**KULLANICILARA DUYURU:**

> Manav Sayım artık **web uygulaması** (PWA) olarak çalışıyor!
> 
> **Yeni kullanıcılar:**
> - https://1sthillman.github.io/Filee adresini Chrome'da aç
> - "Ana ekrana ekle"
> 
> **Eski APK kullanıcıları:**
> 1. APK'da: Menü > Yedek al (JSON indir)
> 2. PWA'yı yükle (yukarıdaki adımlar)
> 3. PWA'da: Menü > Veri içe aktar > JSON dosyasını seç
> 
> **Artık:**
> - ✅ Otomatik güncellenir
> - ✅ Çevrimdışı çalışır
> - ✅ APK yüklemek yok
> - ✅ Tüm özellikler aynı

**APK'yı kaldırabilirsin, artık gerek yok!**

# 🥬 Manav Sayım - Manav ve Market Stok Yönetim Uygulaması

Modern, hızlı ve kullanımı kolay manav/market stok takip, sayım ve sevkiyat yönetim uygulaması.

[![Android](https://img.shields.io/badge/Android-APK-green.svg)](https://github.com/1sthillman/Filee/releases)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Version](https://img.shields.io/badge/Version-1.0-orange.svg)](https://github.com/1sthillman/Filee)

## 📱 APK İndir

### Release (Önerilen - Optimize Edilmiş)
**[📥 Manav-Sayim-Release.apk İndir](https://github.com/1sthillman/Filee/raw/main/Manav-Sayim-Release.apk)** (0.97 MB)

### Debug (Test İçin)
**[📥 Manav-Sayim-Debug.apk İndir](https://github.com/1sthillman/Filee/raw/main/Manav-Sayim-Debug.apk)** (4.00 MB)

## ✨ Özellikler

### 📊 Sayım Yönetimi
- ✅ Hızlı ürün sayımı (koli + dağınık)
- ✅ Tarih bazlı sayım kayıtları
- ✅ Sıralı sayım modu (eller serbest)
- ✅ Sesli komutlarla sayım
- ✅ Favori ürünler
- ✅ Filtreleme (sayılan/sayılmayan)

### 🚚 Sevkiyat Takibi
- ✅ Palet bazlı sevkiyat yönetimi
- ✅ Çoklu palet desteği
- ✅ Sevkiyat kapama/açma
- ✅ Ürün ekleme/çıkarma
- ✅ Önceki sevkiyatı kopyalama

### 📦 Ürün Yönetimi
- ✅ 400+ hazır ürün veritabanı
- ✅ Yeni ürün ekleme
- ✅ PLU ve barkod desteği
- ✅ Koli içi miktar tanımlama
- ✅ Kategori bazlı filtreleme
- ✅ QR kod oluşturma

### 📸 Barkod Okutma
- ✅ Kamera ile barkod/QR kod okuma
- ✅ Manuel kod girişi
- ✅ Fener desteği
- ✅ Hızlı ürün bulma

### 🎤 Sesli Asistan
- ✅ Türkçe sesli komutlar
- ✅ Eller serbest kullanım
- ✅ Sesli yanıtlar
- ✅ Çevrimdışı çalışma
- ✅ Sürekli dinleme

### 📤 Dışa Aktarma
- ✅ Excel (.xlsx) dışa aktarma
- ✅ PDF belge oluşturma
- ✅ CSV dışa aktarma
- ✅ WhatsApp paylaşımı
- ✅ Yedekleme/geri yükleme

### 🎨 Kullanıcı Deneyimi
- ✅ Koyu/açık tema
- ✅ Yazı boyutu ayarı
- ✅ Erişilebilirlik
- ✅ Hızlı arama
- ✅ Responsive tasarım
- ✅ Çevrimdışı çalışma

## 📲 Kurulum

### Android Cihazlara Kurulum

1. **APK İndirme**
   - Yukarıdaki linklerden **Manav-Sayim-Release.apk** dosyasını indirin

2. **Bilinmeyen Kaynaklara İzin Verme**
   - Ayarlar > Güvenlik > Bilinmeyen Kaynaklardan yüklemeye izin ver
   - Veya yükleme sırasında izin verin

3. **Kurulum**
   - İndirilen APK dosyasını açın
   - "Yükle" butonuna basın
   - Kurulum tamamlandıktan sonra "Aç" deyin

4. **İzinler**
   Uygulama ilk açılışta aşağıdaki izinleri isteyecektir:
   - 📸 **Kamera**: Barkod okutma için
   - 🎤 **Mikrofon**: Sesli komutlar için
   - 💾 **Depolama**: Dışa aktarma ve yedekleme için

## 🎯 Kullanım

### Hızlı Başlangıç

1. **Sayım Yapma**
   - "Sayım" sekmesine gidin
   - Tarih seçin
   - Ürüne dokunun veya barkod okutun
   - Koli ve dağınık miktarları girin

2. **Sevkiyat Hazırlama**
   - "Sevkiyat" sekmesine gidin
   - Yeni sevkiyat oluşturun
   - Paletlere ürün ekleyin
   - Paylaş butonuyla gönderin

3. **Sesli Komutlar**
   - 🎤 Mikrofon butonuna basın
   - "Domates 12 koli" deyin
   - Otomatik kayıt olur

4. **Dışa Aktarma**
   - Dışa aktar butonuna basın
   - Excel, PDF veya CSV seçin
   - WhatsApp, Drive veya e-posta ile paylaşın

### Sesli Komut Örnekleri

```
"Domates on iki koli"
"Patates beş koli iki kilo"
"Domates bilgisi"
"Sıralı sayım başlat"
"Palete soğan üç koli ekle"
"Favorilerim"
"Toplam kaç kilo"
```

## 🛠️ Teknik Özellikler

### Teknolojiler
- **Frontend**: HTML5, CSS3, JavaScript (Vanilla)
- **Mobile**: Capacitor (Native Android)
- **Storage**: LocalStorage + IndexedDB
- **APIs**: 
  - Web Speech API (Sesli komutlar)
  - Barcode Detection API (Barkod okuma)
  - Media Devices API (Kamera)
  - Web Share API (Paylaşım)

### Sistem Gereksinimleri
- **Android**: 7.0 Nougat (API 24) veya üzeri
- **RAM**: Minimum 2 GB
- **Depolama**: 10 MB boş alan
- **Kamera**: Barkod okutma için (opsiyonel)
- **Mikrofon**: Sesli komutlar için (opsiyonel)

### İzinler
```xml
<!-- Zorunlu -->
<uses-permission android:name="android.permission.INTERNET" />

<!-- Opsiyonel - Özellikler için -->
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.RECORD_AUDIO" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WAKE_LOCK" />
```

## 📁 Proje Yapısı

```
FiLE/
├── Manav.html                      # Ana uygulama (tek dosya)
├── Manav-Sayim-Release.apk         # Android APK (Release)
├── Manav-Sayim-Debug.apk           # Android APK (Debug)
├── android/                        # Android proje klasörü
│   ├── app/
│   │   ├── src/main/
│   │   │   ├── AndroidManifest.xml
│   │   │   ├── java/com/manav/app/
│   │   │   └── res/
│   │   └── build.gradle
│   ├── build.gradle
│   └── local.properties
├── www/                            # Web varlıkları
│   └── index.html
├── capacitor.config.json           # Capacitor yapılandırma
├── package.json
└── README.md
```

## 🔧 Geliştirme

### Yerel Kurulum

```bash
# Repository'yi klonlayın
git clone https://github.com/1sthillman/Filee.git
cd FiLE

# Bağımlılıkları yükleyin
npm install

# Android platformunu ekleyin
npx cap add android

# Web varlıklarını senkronize edin
npx cap sync android

# Android Studio'da açın
npx cap open android

# Veya doğrudan build alın
cd android
./gradlew assembleRelease
```

### Build Alma

```bash
# Debug APK
cd android
./gradlew assembleDebug

# Release APK
./gradlew assembleRelease

# APK konumu:
# android/app/build/outputs/apk/debug/app-debug.apk
# android/app/build/outputs/apk/release/app-release.apk
```

## 📝 Versiyon Geçmişi

### v1.0.0 (26 Kasım 2026)
- ✨ İlk stabil sürüm
- ✅ Tam özellikli sayım sistemi
- ✅ Sevkiyat yönetimi
- ✅ Sesli asistan
- ✅ Barkod okutma
- ✅ Excel/PDF/CSV dışa aktarma
- ✅ 400+ ürün veritabanı
- ✅ Çevrimdışı çalışma

## 🤝 Katkıda Bulunma

Katkılarınızı bekliyoruz! Lütfen şu adımları izleyin:

1. Bu repository'yi fork edin
2. Yeni bir branch oluşturun (`git checkout -b feature/YeniOzellik`)
3. Değişikliklerinizi commit edin (`git commit -m 'Yeni özellik eklendi'`)
4. Branch'inizi push edin (`git push origin feature/YeniOzellik`)
5. Pull Request oluşturun

## 🐛 Hata Bildirimi

Hata bulursanız veya öneriniz varsa, lütfen [Issue](https://github.com/1sthillman/Filee/issues) açın.

## 📄 Lisans

Bu proje MIT lisansı altında lisanslanmıştır. Detaylar için [LICENSE](LICENSE) dosyasına bakın.

## 👨‍💻 Geliştirici

**1sthillman**
- GitHub: [@1sthillman](https://github.com/1sthillman)

## 🙏 Teşekkürler

- [Capacitor](https://capacitorjs.com/) - Native mobile framework
- [QRCode.js](https://davidshimjs.github.io/qrcodejs/) - QR kod oluşturma
- Tüm açık kaynak katkıda bulunanlara

## 📞 İletişim

Sorularınız için GitHub Issues kullanabilirsiniz.

---

⭐ Projeyi beğendiyseniz yıldız vermeyi unutmayın!

**[⬇️ APK İndir](https://github.com/1sthillman/Filee/raw/main/Manav-Sayim-Release.apk)**

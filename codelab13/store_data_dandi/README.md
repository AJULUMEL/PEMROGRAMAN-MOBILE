# store_data_dandi

![Screenshoot soal 2](images/W13SOAL2.jpg)

![Screenshoot soal 3](images/W1SOAL3.jpg)

![SCREENSHOOT SOAL 4](images/W13SOAL4.jpg)

## Soal 5: Penjelasan Kode Lebih Safe dan Maintainable

### Lebih Safe (Aman):
- **Menghindari typo**: Salah ketik konstanta langsung error saat compile, bukan saat runtime
- **Type safety**: IDE deteksi kesalahan tipe data lebih awal
- **Compile-time error**: Bug ketahuan sebelum aplikasi jalan

### Lebih Maintainable (Mudah Dipelihara):
- **Single source**: Ubah nama kunci cukup di satu tempat (konstanta)
- **Refactoring mudah**: IDE bisa rename semua referensi otomatis
- **Konsisten**: Semua kode pakai nama kunci yang sama

**Contoh:**
```dart
// ❌ Sebelum: Rawan typo, sulit maintain
json['pizzaName']  // bisa salah ketik jadi 'pizaName'

// ✅ Sesudah: Safe & maintainable
const keyName = 'pizzaName';
json[keyName]  // typo langsung error
```

---

![screenshoot soal 5](images/W13SOAL5.jpg)

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

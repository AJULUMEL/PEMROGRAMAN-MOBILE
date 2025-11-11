# books

# DANDI AZRUL SYAHPUTRA - 2341720118

![screenshoot soal 2](images/W11SOAL2.png)

Soal 3

Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!

- substring(0, 450)
Mengambil 450 karakter pertama dari response body API (yang berupa JSON string panjang). Ini dilakukan agar text yang ditampilkan tidak terlalu panjang dan memenuhi layar.

- catchError
Menangkap error jika terjadi kegagalan saat mengambil data dari API (misal: tidak ada koneksi internet, timeout, atau API error). Jika error terjadi, variabel result akan diisi dengan pesan 'An error occurred' dan UI akan di-update melalui setState().

![GIF SOAL3](images/W11SOAL3.gif)

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

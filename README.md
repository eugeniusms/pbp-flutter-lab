# counter_7

## Stateless vs Stateful Widget 
1.  Stateless Widget
    Adalah sebuah widget yang bersifat statis (tidak berubah). Stateless Widget bekerja dengan konsep Constructor -> Build. Konsep ini berarti widget langsung mengarahkan object untuk Build tanpa memiliki perantara untuk pengolahan variabel di dalam prosesnya.
2.  Stateful Widget
    Adalah sebuah widget yang bersifat dinamis. Widget dapat merubah tampilan sesuai respon dari tindakan yang dilakukan oleh user maupun perubahan berdasarkan operasi yang ada di dalam widget itu sendiri. Stateful Widget bekerja dengan konsep Constructor -> Internal State -> Build, artinya terdapat perantara berupa sebuah data maupun variabel yang disebut sebagai state (bersifat dinamis). State tersebut akan diolah dan disesuaikan kemudian ditampilkan saat Build.

| Stateless Widget | Stateful Widget |
| ----- | ----- |
| Bersifat statis | Bersifat dinamis |
| Tampilan tetap (tidak berubah) | Tampilan menyesuaikan interaksi user |
| Alur: Contructor -> Build | Alur: Constructor -> Internal State -> Build |
| Lebih ringan dirender | Memerlukan waktu reload render |
| Cocok untuk widget tanpa perubahan data di dalamnya | Diperlukan untuk menyusun widget dengan pengolahan data yang interaktif | 

## counter_7's Widget
| Widget | Fungsi |
| ----- | ----- |
| CounterSeven | Inisiasi aplikasi |
| CounterPage | Menampilkan counter dan button serta logicnya |
| MaterialApp | Inisiasi title, theme, dan mengatur home dari aplikasi |
| ThemeData | Mengatur tema yang digunakan |
| Scaffold | Mengatur layout dari widget yang ada di dalamnya |
| AppBar | Menambahkan bar aplikasi yang berisi title dengan align left | 
| Text | Berisi sebuah Text dengan properti di dalamnya |
| Center | Mengatur layout widget di dalamnya agar centered |
| Column | Mengatur layout widget di dalamnya agar turun ke bawah (tidak inline-flex) |
| TextStyle | Mengatur style dari sebuah text |
| Container | Menampung beberapa widget di dalamnya |
| Row | Mengatur layout widget di dalamnya agar menyamping (inline-flex) |
| FloatingActionButton | Membuat tombol yang dapat dimodifikasi event di dalamnya |
| Icon | Menampilkan icon yang dibutuhkan sesuai propertinya |

## Const vs Final
(bentar makan dulu)

## Project Implementation
(bentar makan dulu)

## Mario's References
-   Icons Flutter Class<br>
    https://api.flutter.dev/flutter/material/Icons-class.html
-   Dart Playground<br>
    https://dartpad.dev/?

## Flutter
This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
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
| const | final |
| ----- | ----- |
| Const dapat digunakan untuk deklarasi variabel immutable yang nilainya bersifat konstan. Setiap kali perlakuan render tetap dapat terinisiasi ulang sesuai nilainya sehingga lebih fleksibel pada keadaan yang memerlukan render data. Akan tetapi, tetap saja const tidak dapat diubah saat berada di runtime satu kali cycle program. | Final berarti single-assignment, sebuah final variabel perlu diinisiasi, sekalinya diinisiasi, nilai variabel tidak dapat diubah. Final dapat dimanfaatkan untuk meletakkan data-data yang tidak akan berubah sekalipun ada rendering (reload) |

## Project Implementation
1.  Membuat aplikasi Flutter bernama counter_7 dengan command
    `flutter create counter_7`
2.  Menambahkan modules dari import flutter package dan fungsi main() yang dieksekusi pertama kali oleh Flutter pada main.dart
3.  Mengarahkan runApp() menuju aplikasi terkait 'CounterSeven'
4.  Menyusun CounterSeven sebagai StatelessWidget dan menambahkan MaterialApp widget untuk menginisiasikan hal-hal penting yang ditampilkan dalam aplikasi
5.  Mengarahkan home: menuju halaman CounterPage yang sudah diimport dari directory /pages/CounterPage.dart
6.  Menyusun CounterPage sebagai StatefulWidget dengan beberapa atributnya seperti judul dan key. Kemudian menambahkan state _CounterState() ke dalam widget untuk menyimpan internal state dari nilai _counter
7.  Menyusun _CounterState sebagai widget yang digunakan untuk menampilkan hasil counter
8.  Menginisiasikan _counter = 0 untuk state awal, lalu menambahkan dua fungsi _decrementCounter() dan _incrementCounter() yang digunakan untuk mengeset state menuju nilai yang diinginkan, yaitu -1 untuk _decrementCounter() dan +1 untuk _incrementCounter()
9.  Menyusun widget dengan Scaffold yang digunakan untuk menyimpan beberapa widget lain di dalamnya
10. Menambahkan title pada Widget AppBar dan mengatur alignment dari title tersebut
11. Menambahkan body dengan Widget Center untuk meletakkan child widget ke tengah
12. Children widget pada body berisi Widget Text yang digunakan untuk menampilkan "GANJIL" vs "GENAP" sesuai kondisi nilai _counter saat ini beserta dengan TextStylenya. Jika _counter % 2 == 0 maka tampilkan blok "GENAP", sebaliknya tampilkan blok "GANJIL"
13. Menambahkan dua button yaitu decrement & increment button menggunakan Widget FloatingActionButton yang disimpan dalam Widget Row (inline-flex posisi dari buttonya) di dalam Container.
14. Mengarahkan atribut onPressed: pada button ke fungsi yang sesuai setStatenya, decrement button ke _decrementCounter dan increment button ke _incrementButton
15. Menambahkan ikon ke button sesuai dengan permintaan soal, ikon negatif (Icons.remove) dan ikon plus (Icons.add)
16. `BONUS` Menambahkan alur logika dari button decrement. Jika _counter > 0 maka tampilkan FloatingActionButton decrement, jika tidak maka tampilkan SizedBox() (widget kosong) untuk menghilangkan button saat nilai _counter <= 0

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
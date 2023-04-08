# Resume Materi KMFlutter
## _Dialog & Bottom Sheet_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


#### Asssets
Adalah file yang di bundled dan di deployed bersamaan dengan aplikasi, tipe asets ini bisa berupa static data (JSON files), icons, images dan font file (ttf), untuk menentukan assets itu menggunakan pubspec.yaml jadi pubspec.yaml itu terletak pada root project, ini digunakan untuk mengidentifikasi assets yang dibutuhkan aplikasi kita.

#### Image
penggunaan image atau gambar akan membuat tampilan aplikasi kita akan menjadi lebih menarik, flutter mendukung format gambar seperti JPEG, WebP, GIF,Animated Web/GIF, PNG, BMP, dan WBMP. Untuk menampilkan gambar pada aplikasi kita bisa mendapatkan imagenya dari project assets atau bisa juga kita dapatkan dari internet. 


#### Alert Dialog
Alert Dialog adalah widget untuk tampilan android yang berasal dari material design componen fungsi alert dialog ini digunakan untuk menginformasikan pengguna tentang situasi tertentu degan alert dialog ini juga bisa mendapatkan input dari user, untuk membuat widget alert dialog dibutuhkan method showDialog. Widget alert dialog menyediakan properti seperti content dan action, dalam properti content
kita bisa memasukan widget text, gambar, dan animasi gambar.
 

#### BottomSheet 
BottomSheet Ini sifatnya seperti dialog tetapi muncul dari bawah layar aplikasi, untuk membuatny bisa menggunakan fungsi bawaan dari flutter showModalbottomSheet, ini akan membutuhkan 2 properti yaitu context dan builder.

#### Flutter Navigation
Navigasi adalah bagaimana pengguna bisa berpindah dari halaman satu ke halaman lain.
perpindahan halaman menggunakan Navigator.push() dan untuk kembali ke halaman sebelumnya menggunakan Navigator.pop()

#### Navigation dengan named route
Setiap halaman memiliki alamat yang disebut route kita bisa menggunakan alamat tersebut untuk melakukan perpindahan halaman. untuk berpindah ke halaman lain menggunakan Navigator.pushNamed() dan untuk kembali ke halaman sebelumnya
menggunakan Navigator.pop()

#### License

**Created By: Reza Gustian**
**Senin, 08 April 2023**
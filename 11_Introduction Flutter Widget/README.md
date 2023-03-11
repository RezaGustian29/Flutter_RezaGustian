# Resume Materi KMFlutter
## _Introduction Flutter Widget_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

#### Flutter
Flutter adalah alat pengembangan antarmuka pengguna yang digunakan untuk membuat aplikasi mobile, desktop dan web. Flutter memiliki beberapa keunggulan yaitu :  

- Mudah digunakan dan di pelajari
- Produktivitas tinggi
- Dokumentasi lengkap bisa mengunjungi web pub.dev untuk melihat dokumentasi flutter
- Komunitas yang berkembang

#### Bagian Dari Flutter
- Software Development Kit (SDK) yang merupakan alat-alat untuk membantu proses        pengembangan aplikasi dan di dalan SDK juga sudah termasuk framework.
- Framework adalah perlengkapan yang dibutuhkan untuk membentuk aplikasi yang dapat
  di customisasi, framework flutter dapat digunakan untuk membangun aplikasi yang cantik. mudah di compile dan multi platform hanya dengan single code base.

#### Membuat Project 
Dilakukan dengan menjalankan perintah :
flutter create <nama_project>

#### Menjalankan Project :
- Masuk ke direktori project
- Jalankan perintah flutter run

#### Struktur direktori Project Flutter
Direktori platform
- Android
- ios
- web

#### Direktori Project
- lib yang merupakan ruang kerja utama yang dimana kita banyak menulis kode aplikasi     kita didalam folder lib ini
- test dimana kita membuat kode untuk pengujian terhadap aplikasi 

#### File utama
Dalam project flutter yaitu main.dart yang berada di dalam folder lib file ini merupakan file yang pertama kali dibaca dan dijalankan, di file main.dart kita dapat menuliskan kode fungsi main yang merupakan entri poin ketika kita menjalankan aplikasi didalam fungsi main terdapat fungsi runApp dimana fungsi ini memberitahukan flutter yang merupakan top level widget dari aplikasi kita. 

#### Widget
Sebagian besar aplikasi flutter terbentuk dari widget-widget ini yang membentuk antarmuka atau UI aplikasi kita widget merupakan sebuah
blueprint atau class dan widget juga dapat terdiri dari widget lainnya

#### Widget Memiliki 2 jenis yaitu
##### Stateles
tidak bergantung pada perubahan data dimana stateles tidak memiliki internal state dan hanya sekali saja di build, stateles widget hanya fokus pada tampilan yang tidak memiliki perubahan dan dibuat extends pada class StatelesWidget.
##### Stateful
mementingkan pada perubahan data dimana ketika kita ingin ada bagian dari widget kita yang berubah secara dynamic, statefulwidget dibuat dengan extends pada class stateful widget, 1 widget menggunakan 2 class (widget dan state).

#### Built in widget 
Adalah widget yang dapat langsung digunakan dan sudah ter intsal bersama flutter atau bawaan flutter itu sendiri contohnya seperti
MaterialApp, Scaffold, Appbar, text dan lainnya.

#### MateriaLapp
Merupakan widget yang menggunakan material design yang biasanya digunakan untuk pengembangan aplikasi android, materialapp merupakan komponen
penting di flutter kita dapat mengakses widget lain yang disiediakan oleh SDK melauli material app ini.

#### Scaffold 
Digunakan untuk membentuk sebuah halaman dimana pada scaffold kita dapat menggunakan properti app bar floating action button drawer dan 
masih banyak lagi

#### Appbar
widget ini diguunakan untuk membentuk action bar yang terletak diatas halaman beberapa properti yang terletak dalam appbar widget salah satunya adalah title.

#### Text 
widget ini digunakan untuk menampilkan sebuah string teks. 

#### License

**Created By: Reza Gustian**
**Senin, 11 Maret 2023**
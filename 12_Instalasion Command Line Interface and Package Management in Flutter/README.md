# Resume Materi KMFlutter
## _Flutter Command LineInterface & Flutter Package Management_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

#### Flutter CLI
Atau Command Line Interface merupakan alat yang bisa kita gunakan untuk berinteraksi dengan Flutter SDK. Interaksi tersebut merupakan suatu perintah yang dijalankan di dalam terminal untuk melakukan suatu tugas tertentu.

Ada banyak _CLI_ Command Yang bisa kita gunakan namun disini kita hanya akan membahas command-command yang penting atau sering dipakai saja dengan mengetahui command-command ini maka aka mempermudah kita berinteraksi dengan flutter.

- Flutter Doctor
Perintah ini akan dijalankan untuk menampilkan informasi software yang dibutuhkan flutter
- Flutter Create
Perintah ini digunakan untuk membuat project aplikasi flutter baru di directory tertentu
- Flutter Run
Dalam pengembangan aplikasi apapun developer butuh menjalankan aplikasi yang dibuat untuk melihat apakah kode yang dihasilkan dapat berjalan atau tidak untuk itu di dalam flutter untuk me-running aplikasi kita dengan menjalankan perintah ini untuk menjalankan project aplikasi di device yang tersedia	
- Flutter Emulator
Perintah ini digunakan untuk menampilkan daftar emulator yang terinstal dan menampilkan option untuk membuka emulator atau membuat emulator baru
- Flutter Channel
Perintah untuk menampilkan daftar flutter channel yang tersedia dan menunjukan channel yang digunakan saat ini 
- Flutter Pub
Ada dua syntax yang bisa kita gunakan di flutter pub ini yaitu :
	- Flutter pub add ini digunakan untuk  menambahkan packages ke dependencies yang ada di pubspec.yaml
	- Flutter pub get perintah ini digunakan untuk mendownload semua packages atau dependencies yang ada di pubspec.yaml
- Flutter Build
Perintah ini digunakan untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke Appstore, Playstore dll
- Flutter Clean
Perintah ini digunakan untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi kita di emulator. Perintah ini juga akan memperkecil ukuran project tersebut

#### Packages Management
Flutter mendukung sharing package yang dibuat oleh developer lain tujuannya adalah untuk mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau from scrath, untuk mendapatkan package ini kita bisa mendapatkan di website pub.dev

#### Cara Menambahkan packages 
- Cari package di pub.dev
- Copy baris dependencies yang ada dibagian installing 
- Buka pubspec.yaml
- Paste dibawah dependencies pubspec.yaml
- Run flutter pub get di terminal
- Import package di file dart agar bisa digunakan 
- Stop atau restart aplikasi jika dibutuhkan 

#### License

**Created By: Reza Gustian**
**Senin, 15 Maret 2023**
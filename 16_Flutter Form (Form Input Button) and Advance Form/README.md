# Resume Materi KMFlutter
## _Flutter Form (Form Input Button) and Advance Form_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

#### Form
Digunakan untuk berinteraksi dengan pengguna dimana form dapat menerima data yang diisi oleh user dan isian data dapat lebih dari satu. Membuat form menggunakan StatefulWidget lalu untuk setiap keadaan form  disimpan menggunakan GlobalKey<FormState> 

#### Input 
Ada beberapa input widget yang dapat kita gunakan seperti tetxtfield radiobutton 	checkbok dan dropdown buttton. 


#### Radio Button
widget ini memiliki tampilan yang memberi opsi pada pengguna dan user bisa memilih satu opsi dari beberapa opsi yang tersedia, dalam membuat radio kita membutuhkan properti yang dapat menampung nilai dari input usernya dimana kita simpan ke dalam radio value dan nilainy akan berubah ketika fungsi onchanged ini dipanggil.


#### Checkbok 
Widget ini akan menampilkan UI yang yang memberi opsi kepada penggnuna dan user bisa memilih beberapa opsi 


#### Dropdown button
dimana widget ini akan memberikan opsi kepada pengguna dan hanya dapat memilih satu opsi saja dan semua opsinya tidak ditampilkan diawal 
hanya tampil jika ditekan oleh user. dalam membuat dropdown button data diambil menggunakan property dengan tipe data sesuai value pada
DropdownMenuItem.

#### Button
Bersifat seperti tombol yang dapat melakukan sesuatu saat ditekan, kita bisa membuat button di flutter menggunakan ElevatedButton jika ditekan button ini akan 
menjalankan onpressed. yang dapat melakukan sesuatu.

#### Icon Button
Dimana tombol ini hanya menampilkan icon dan jika ditekan akan menjalankan onpressed untuk menjalankan suatu fungsi.

## Advance Form Input

User input bisa digunakan untuk interaksi antara aplikasi dan usernya widget-widget ini dibuat aplikasi bertujuan untuk berbagai input dan feedback dari user.

#### Date Picker
Widget ini bisa kita gunakan pada UI agar user dapat memasukkan tanggal yang dibutuhkan, contoh tanggal kelahiran waktu pemesanan tiket waktu reservasi restoran jadwal meeting dll. kita akan membuat date picker ini menggunakan fungsi bawaan dari flutter yaitu showDatePicker fungsi showDatePicker ini memiliki tipe data future dan fungsi ini akan menampilkan dialog material design yang merupakan tampilan untuk aplikasi android.

#### Color Picker
kita bisa membuat widget colorPicker dimana user bisa memilih color yang ia butuhkan, dan penggunaan  color picker ini bisa 
digunakan untuk berbagai macam kondisi, dan untuk membuat color picker membutuhkan package color_picker.

#### File Picker
Adalah kemampuan widget untuk mengakses storage di handphone kita disini kita bisa memilih file dari aplikasi kita
dan kita bisa membuka file tersebut, untuk membuat file picker ini membutuhkan 2 package yaitu file_picker dan open_file


#### License

**Created By: Reza Gustian**
**Senin, 26 Maret 2023**
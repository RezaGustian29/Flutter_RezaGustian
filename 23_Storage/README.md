# Resume Materi KMFlutter
## _Storage_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)


#### Penyimpanan Lokal
penyimpanan lokal diperlukan untuk efisiensi penggunaan data internet jadi data yang sudah pernah kita ambil sekali dari internet maka data itu akan disimpan ke penyimpanan lokal di perangkat kita, jadi nanti ketika aplikasi membutuhkan data yang sama aplikasi kita tidak perlu mendapatkannya lagi/mendownload ulang dari internet dia akan mengambil data tersebut dari penyimpanan local storage di perangkat kita. Ada beberapa cara implementasi penyimpanan lokal contohnya seperti.
- sharedpreferences dan
- Local Database 


#### Shared Preferences 
Digunakan untuk menyimpan data yang sifatnya sederhana jika kita ingin menyimpan data yang lebih kompleks maka kita bisa menggunakan SQLite, sharedpreferences menyimpan data dengan format key value, disini dia menyimpan tipe data dasar seperti teks, angka, dan boolean. contoh penggunaan shared preferences seperti menyimpan data login dan riwayat pencarian.


#### Local Database (SQLite)
Kita dapat menganalogikan database itu sebagai lemari  arsip dimana database itu memiliki tabel, tabel memiliki column untuk mendefinisikan data yang tersipan pada row. database dapat digunakan untuk menyimpan dan mempertahankan dat dalam jumlah besar pada local drive, database disini bersifat privat yang artinya hanya aplikasi itu sendiri yang dapat mengakses databasenya. SQLite adalah database open source yang mendukung insert, read, update dan remove data.

#### License

**Created By: Reza Gustian**
**Senin, 02 April 2023**
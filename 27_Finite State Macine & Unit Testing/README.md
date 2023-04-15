# Resume Materi KMFlutter
## _Finit State Machine_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

### Finit State Machine
Adalah mesin yang memiliki sejumlah state, tiap state yang dimiliki tadi itu menunjukan apa yang terjadi sebelumnya. contoh jika ada 3 buah state 
- IDDLE 
Saat tidak terjadi proses apa-apa 
- RUNNING
Saat proses berjalan dan
- ERROR
Saat proses gagal diselesaikan 

Dari ke 3 kombinasi state tersebut jika proses sukses maka yang terjadi adalah dari state IDDLE berubah menjadi RUNNING yang artinya proses berjalan kemudian ketika berhasil melakukan proses dari state running akan menjadi IDDLE kembali tetapi jika gagal saat proses RUNNING maka akan menjadi state ERROR lalu ERROR akan berubah menjadi IDDLE.

#### Implementasi pada View-Model
Menambah Enum pada View Model pada view-model tambahkan sebuah enum yang menyimpan masing-masing state yaitu.
- none untuk IDDLE
- loading untuk RUNNING
- error untuk state ERROR

#### Menyimpan Getter-Setter
Membuat getter-setter untuk menyimpan state dari widget.

#### Gunakan State
Tiap Proses yang perlu state tersebut, dapat memanfaatkannya 

#### Perbedaan Tampilan Tiap State
informasi finit state dapat berguna untuk menentukan seperti apa tampilan yang dimunculkan.

## Unit Test 
Merupakan salah satu jenis pengujian pada proses pengembangan perangkat lunak, pengujian ini dilakukan pada unit-unit yang terdapat dalam sebuah perangkat lunak, unit yang dimaksud adalah sebuah fungsi atau method. 

#### Tujuan Unit Testing
- Untuk memastikan fungsi dapat mengolah berbagai jenis input
- Memastikan hasil dari suatu fungsi atau method sudah sesuai 
- Menjadikan dokumentasi 

#### Bagaimana Melakukan Unit Test
- Manual
Yaitu dengan menjalankan unit dicek secara manual hasilnya sudah sesuai atau belum
- Automated
Kita harus menulis script yang dapat dijalankan berkali-kali menggunakan test runner.
untuk melakukan testing ini membutuhkan package yaitu "test"

## Mocking
Adalah proses yang terikat dengan sistem eksternal dapat mempengaruhi berjalannya pengujian, pengaruh tersebut dapat mengganggu proses
pengujian. Dilakukan mocking adalah untuk menghindari masalah-masalah tersebut.

#### Cara Kerja Mocking
Suatu object akan dibentuk tiruannya, kemudian bentuk tiruan tersebut akan memiliki input dan output yang sama dengan yang asli
dan bentuk tiruannya akan menghilangkan ketergantungan pada sistem eksternal. untuk melakukan mocking diperlukan package "mockito"


#### License

**Created By: Reza Gustian**
**Senin, 15 April 2023**
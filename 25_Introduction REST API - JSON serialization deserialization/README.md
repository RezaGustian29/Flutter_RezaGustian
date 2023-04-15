# Resume Materi KMFlutter
## _Rest Api Client_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

### Rest Api Client
Representational State Transfer 
Application Programming Interface

#### Rest Api
rest API merupakan jembatan antara server dengan client yaitu aplikasi kita sebagaia client,
arsitektur yang dibuat memisahkan tampilan dengan proses bisnis, dan bagian tampilan dengan proses bisnis 
berbagi data melalui http request. 

#### HTTP
Adalah protokol yang diguunakan untuk berikirim data pada internet dan biasanya data tersebut berbentuk media web. fluuter memiliki package yang bisa melakukan tugas ini.
pola komunikasi dalam berkirim data yaitu.
- Cliet mengirim sebuah request setelah itu
- Server mengolah dan membalas dengan memberi response yang nantinya akan ditampilkan di aplikasi kita.


## Struktur Request

#### (URL) 
saat melakukan request kita memiliki alamat halaman yang akan diakses

#### (GET, POST, PUT, dan DELETE)
kita juga perlu menentukan aksi apa yang diinginkan(GET, POST, PUT utuk mengirim data, dan DELETE untuk menghapus data). 

#### header 
Yaitu informasi tambahan terkait request yang dikirimkan. jika terjadi sebuah masalah di dalam API kita mencari penyebabnya disini.

#### Body 
Yang disertakan bersama request.

#### Struktur Response
Ini akan memiliki status code yang merupakan kode yang mewakili keseluruhan response baik sukses maupun gagal, biasanya status code dengan angka 200 menunjukan hasil request kita sukses dan jika 400 dan 500 menunjukan request kita gagal response juga memiliki header yang merupakan informasi tambahan terkait response yang diberikan dan memiliki body yang data disertakan bersama response.

#### Dio
Adalah sebuah package yang tersedia di pub.dev yang merupakan http client yang dimanfaatkan untuk melakukan rest API Serialisasi JSON.


#### License

**Created By: Reza Gustian**
**Senin, 11 April 2023**
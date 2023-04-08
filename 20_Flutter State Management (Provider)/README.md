# Resume Materi KMFlutter
## _Flutter State Management (Provider)_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

### Flutter Global State Management

#### Pengertian state
state adalah data atau informasi yang dapat dibaca saat pembuatan widget state akan berubah saat widget akan aktif dan untuk mengelola state kita memerlukan stateful widget karena state hanya dimiliki oleh statefulwidget. kita bisa memanfaatkan state ketika kita ingin membuat sebuah widget yang ingin memiliki perubahan  kita bisa menyimpan nilainya disebuah properti lalu jika ada perubahan state bisa digunakan olehh widget saat di build ulang. untuk melakukan perubahan state kita bisa menggunakan setstate.

### Global State
global state merupakan state yang dapat digunakan di seluruh aplikasi 

#### kenapa perlu global state?
karena agar widget dapat memanfaatkan state yang sama dengan mudah contohnya fitur keranjang pada e-commerce dimana kita membutuhkan state dari cart tidak hanya pada satu widget saja tetapi bisa diakses widget lain seperti yang ada di deskripsi produk dan di halaman pembayaran. kita bisa menggunakan provider untuk pendekatan
state management yang lebih kompleks, dan provider perlu diinstal terlebih dahulu agar dapat digunakan.


#### License

**Created By: Reza Gustian**
**Senin, 07 April 2023**
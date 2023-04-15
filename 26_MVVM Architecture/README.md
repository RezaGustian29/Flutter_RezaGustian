# Resume Materi KMFlutter
## _Rest Api Client_

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://travis-ci.org/joemccann/dillinger)

### Apa itu MVVM Architecture?
Model View ViewModel dimana kita memisahkan logic dengan tampilan UI yaitu view ke dalam ViewModel.

#### Keuntungan MVVM
- Reusability
Jika ada beberapa tampilan yang memerlukan alur logic yang sama mereka bisa menggunakan ViewModel yang sama, ini akan meningkatkan efisiensi kode kita
- Maintainability 
Mudah dirawat karena pekerjaan terkait tampilan tidak tertumpuk bersama logic ini akan membedakan kita antara logic dan tampilan.
- Testability
Pengujian menjadi terpisah antara pengujian tampilan dengan pengujian logic sehingga dapat meningkatkan produktifitas pada pengujian 
Keuntungan Yang Didapat

#### Melakukan MVVM
Struktur direktori 
- Model memiliki 2 bagian yaitu bentuk data yang digunakan dan sumber dari data tersebut.
- Tiap screen diletakkan dalam sebuah direktori yang di dalamnya terdapat View dan ViewModel
Model
- Adalah bentuk data yang akan digunakan, dibuat dalam bentuk class 
- Dan data-data yang dimuat, diletakkan pada property 
ViewModel
- Menyimpan data data dan logic yang diperlukan halaman
- Jika widget lain memerlukan logic yang sama dapat menggunakan ViewModel ini juga

#### License

**Created By: Reza Gustian**
**Senin, 11 April 2023**
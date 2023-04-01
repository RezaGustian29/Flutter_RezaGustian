import 'package:bottomsheet/soal_prioritas1/image_show.dart';
import 'package:flutter/material.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  //List Data Image yang berupa string
  List<String> images = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.jpg',
    'assets/image6.jpg',
    'assets/image7.jpg',
    'assets/image8.jpg',
    'assets/image9.jpg',
    'assets/image10.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Image Gallery'),
      ),
      body: GridView.builder(
        //untuk mengatur berapa jumlah gambar/grid kesamping yang ditampilkan
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: images.length,
        itemBuilder: (BuildContext context, index) {
          //widget yang mendeteksi pergerakan
          return GestureDetector(
            onTap: () {
              //ketika di klik makan akan muncul modal bottomsheet dan muncul gambar sesuai yang ditekan
              showImage(context, images[index]);
            },
            //untuk menampilkan gambar dari direktori dari list data image yang berasal dari folder assets
            child: Image.asset(
              images[index],
              //untuk menyamaratakan ukuran sebuah gambar yang ukurannya tidak sama
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

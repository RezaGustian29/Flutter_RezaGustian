import 'package:flutter/material.dart';

class FullImage extends StatelessWidget {
  const FullImage({super.key});

  @override
  Widget build(BuildContext context) {
    //mengambil parameter yang dikirim melalui argumen yaitu berupa link data image
    final String imageUrl =
        ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fullscreen Image'),
      ),
      body: Container(
        child: Center(
          //untuk menampilkan gambar yang sesuai parameter yang dikirim berupa image url
          child: Image.asset(imageUrl),
        ),
      ),
    );
  }
}

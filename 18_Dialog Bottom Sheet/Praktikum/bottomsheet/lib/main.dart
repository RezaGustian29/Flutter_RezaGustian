import 'package:bottomsheet/soal_eksplorasi/login_page.dart';
import 'package:bottomsheet/soal_prioritas1/image_fullscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ImageGallery(),
      //Menentukan halaman yang pertama kali dibuka
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginPage(),
        //'/ImageGallery': (_) => const ImageGallery(),
        '/fullscreen': (_) => const FullImage(),
      },
    );
  }
}

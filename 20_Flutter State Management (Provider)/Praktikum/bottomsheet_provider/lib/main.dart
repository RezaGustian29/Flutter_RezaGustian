import 'package:bottomsheet_provider/image_gallery.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'image_fullscrenn.dart';
import 'package:bottomsheet_provider/stores/images.dart' as image_store;

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => image_store.ImageProvider(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: ImageGallery(),
      initialRoute: '/',
      routes: {
        '/': (_) => const ImageGallery(),
        '/fullscreen': (_) => const FullImage(
              image: '',
        ),
      },
    );
  }
}

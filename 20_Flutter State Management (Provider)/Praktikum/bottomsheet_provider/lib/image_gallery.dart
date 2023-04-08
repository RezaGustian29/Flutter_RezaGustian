import 'package:flutter/material.dart';
import 'image_show.dart';
import 'package:provider/provider.dart';
import 'package:bottomsheet_provider/stores/images.dart' as image_store;
import 'package:shared_preferences/shared_preferences.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  late SharedPreferences loginData;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    loginData = await SharedPreferences.getInstance();
  }

  /* List<String> images = [
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
    'assets/image11.jpg',
    'assets/image12.jpg',
  ]; */
  @override
  Widget build(BuildContext context) {
    final imageProvider = Provider.of<image_store.ImageProvider>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Image Gallery',
        ),
        /* leading: Row(
          children: [
            IconButton(
              onPressed: () {
                loginData.setBool('login', true);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              icon: const Icon(Icons.logout_outlined),
            ),
          ],
        ), */
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: imageProvider.images.length,
        itemBuilder: (BuildContext context, index) {
          return GestureDetector(
            onTap: () {
              showImage(context, imageProvider.images[index].url);
              /* Navigator.of(context).pushNamed('/fullscreen',
                  arguments: imageProvider.images[index].url); */
            },
            child: Image.asset(
              imageProvider.images[index].url,
              fit: BoxFit.cover,
            ),
          );
        },
      ),
    );
  }
}

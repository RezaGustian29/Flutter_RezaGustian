import 'package:flutter/material.dart';
import 'package:bottomsheet_provider/model.dart';

class ImageProvider with ChangeNotifier {
  List<ImageModel> listImages = [
    ImageModel(url: 'assets/image1.jpg'),
    ImageModel(url: 'assets/image2.jpg'),
    ImageModel(url: 'assets/image3.jpg'),
    ImageModel(url: 'assets/image4.jpg'),
    ImageModel(url: 'assets/image5.jpg'),
    ImageModel(url: 'assets/image6.jpg'),
    ImageModel(url: 'assets/image7.jpg'),
    ImageModel(url: 'assets/image8.jpg'),
    ImageModel(url: 'assets/image9.jpg'),
    ImageModel(url: 'assets/image10.jpg'),
    ImageModel(url: 'assets/image11.jpg'),
    ImageModel(url: 'assets/image12.jpg'),
  ];

  List<ImageModel> get images => listImages;

  void removeImage(int index) {
    listImages.removeAt(index);
    notifyListeners();
  }
}

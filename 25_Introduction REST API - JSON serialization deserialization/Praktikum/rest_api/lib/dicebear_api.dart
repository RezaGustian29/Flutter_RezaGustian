import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(const DiceBear());

class DiceBear extends StatefulWidget {
  const DiceBear({super.key});

  @override
  _DiceBearState createState() => _DiceBearState();
}

class _DiceBearState extends State<DiceBear> {
  String imageUrl = "";

  // Fungsi untuk mengambil gambar dari API
  Future<void> getImage() async {
    String url = "https://api.dicebear.com/6.x/bottts/png";
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      setState(() {
        imageUrl = url;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getImage();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DiceBear API Example'),
        ),
        body: Center(
          child: imageUrl != ""
              ? Image.network(imageUrl)
              : const CircularProgressIndicator(),
        ),
      ),
    );
  }
}

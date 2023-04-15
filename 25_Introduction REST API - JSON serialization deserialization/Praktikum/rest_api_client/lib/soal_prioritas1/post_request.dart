import 'dart:convert';
import 'package:dio/dio.dart';

void main() async {
  Dio dio = Dio();

  //buat data yang akan dikirim yang berupa list Map
  Map<String, dynamic> dataContact = {
    "name": "Abdul Taufik",
    "phone": "088314897654"
  };

  try {
    Response response = await dio.post(
      "http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts",
      data: json.encode(dataContact),
    );
    //untuk menampilkan data yang ditambahkan ke api dari list map data

    print('Response: ${response.statusCode}');
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}

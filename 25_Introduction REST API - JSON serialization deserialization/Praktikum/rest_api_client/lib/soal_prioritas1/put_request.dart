import 'dart:convert';
import 'package:dio/dio.dart';

void main() async {
  Dio dio = Dio();

  // Request body yang akan dikirim
  Map<String, dynamic> requestBody = {
    "id": 1,
    "title": "foo",
    "body": "bar",
    "userId": 1
  };

  try {
    Response response = await dio.put(
      "https://jsonplaceholder.typicode.com/posts/1",
      data: json.encode(requestBody),
    );

    // Tampilkan respon dari server
    print('Response: ${response.statusCode}');
    print(response.data);
  } catch (e) {
    print(e.toString());
  }
}

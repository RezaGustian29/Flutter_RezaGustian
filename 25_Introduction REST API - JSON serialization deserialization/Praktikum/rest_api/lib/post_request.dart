import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class PostRequest extends StatefulWidget {
  const PostRequest({super.key});

  @override
  State<PostRequest> createState() => _PostRequestState();
}

class _PostRequestState extends State<PostRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Get Request',
        ),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              postData();
            },
            child: const Text('Put Request'),
          ),
        ),
      ),
    );
  }
}

void postData() async {
  var dio = Dio();
  var response = await dio.post(
      "http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts",
      data: {
        'name': 'John Doe',
        'email': 'johndoe@example.com',
        'phone': '1234567890'
      });
  print(response.statusCode);
  print(response.data.toString());
}

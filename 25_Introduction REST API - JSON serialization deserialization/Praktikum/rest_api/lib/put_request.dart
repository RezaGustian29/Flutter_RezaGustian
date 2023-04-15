import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class PutRequest extends StatefulWidget {
  const PutRequest({super.key});

  @override
  State<PutRequest> createState() => _PutRequestState();
}

class _PutRequestState extends State<PutRequest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Put Request'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            onPressed: () {
              fetchData();
            },
            child: Text('Put Request'),
          ),
        ),
      ),
    );
  }
}

void fetchData() async {
  var dio = Dio();
  var response =
      await dio.put("https://jsonplaceholder.typicode.com/posts/1", data: {
    'id': 1,
    'title': 'foo',
    'body': 'bar',
    'userId': 1,
  });
  print(response.data.toString());
}

import 'dart:convert';
import 'package:dio/dio.dart';

/* void main() {
  Dio()
      .get(
          "http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts")
      .then((Response) {
    print(Response);
  });
}  */
/* 
void main() {
  var dataMap = {
    "name": "Ahmad Rojali",
    "phone": 6288657124512,
  };
  var dataJSON = jsonEncode(dataMap);
  print(dataJSON);
} */

/* void main() {
  var dataJSON = '{"name": "Jhon Thor", "phone": 6288765343212}';
  var dataMap = jsonDecode(dataJSON);
  print(dataMap);
} */

void postContact() async {
  Dio dio = Dio();
  String url =
      'http://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts';

  try {
    Response response = await dio.post(url, data: {
      'name': 'John Doe',
      'email': 'johndoe@example.com',
      'phone': '1234567890'
    });

    print(response.statusCode);
    print(response.data);
  } catch (error) {
    print(error);
  }
}

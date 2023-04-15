import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  var dataJSON = '{"id": "2", "name": "Jhon Thor", "phone": "0857676565688"}';
  var dataMap = jsonDecode(dataJSON);
  print(dataMap);
}

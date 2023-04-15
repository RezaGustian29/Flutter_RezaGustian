import 'package:dio/dio.dart';
import 'package:finite_state_mvvm/model/food_model.dart';

/* class FoodsAPI {
  static Future<List<Foods>> getFoods() async {
    final response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods");

    List<Foods> foods = (response.data as List)
        .map(
          (e) => Foods(
            id: e['id'],
            name: e['name'],
          ),
        )
        .toList();
    return foods;
  }
} */

class FoodsAPI {
  static Future<List<Foods>> getFoods() async {
    final response = await Dio().get(
        "https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods");

    List<Foods> foods = (response.data as List)
        .map(
          (e) => Foods(
            id: e['id'],
            name: e['name'],
          ),
        )
        .toList();
    return foods;
  }
}

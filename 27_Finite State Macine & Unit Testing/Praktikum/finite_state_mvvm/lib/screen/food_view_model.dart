import 'package:finite_state_mvvm/model/api/food_api.dart';
import 'package:finite_state_mvvm/model/food_model.dart';
import 'package:flutter/cupertino.dart';

class FoodViewModel with ChangeNotifier {
  List<Foods> _foods = [];
  List<Foods> get foods => _foods;

  getAllFoods() async {
    final f = await FoodsAPI.getFoods();
    _foods = f;
    notifyListeners();
  }
}

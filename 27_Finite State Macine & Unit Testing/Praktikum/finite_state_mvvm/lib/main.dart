import 'package:finite_state_mvvm/screen/food/food_screen.dart';
import 'package:finite_state_mvvm/screen/food_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodViewModel(),
        )
      ],
      child: const MaterialApp(
        home: FoodsScreen(),
      ),
    ),
  );
}

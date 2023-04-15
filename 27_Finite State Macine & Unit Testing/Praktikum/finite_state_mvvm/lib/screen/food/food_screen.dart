import 'package:finite_state_mvvm/screen/food_view_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FoodsScreen extends StatefulWidget {
  const FoodsScreen({super.key});

  @override
  State<FoodsScreen> createState() => _FoodsScreenState();
}

class _FoodsScreenState extends State<FoodsScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<FoodViewModel>(context, listen: false).getAllFoods();
    });
  }

  @override
  Widget build(BuildContext context) {
    final modelview = Provider.of<FoodViewModel>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('List Foods'),
      ),
      body: ListView.builder(
        itemCount: modelview.foods.length,
        itemBuilder: ((context, index) {
          final foods = modelview.foods[index];
          return Card(
            child: ListTile(
              title: Text(foods.id.toString()),
              subtitle: Text(
                foods.name,
                style: GoogleFonts.poppins(
                    fontSize: 13, fontWeight: FontWeight.w600),
              ),
            ),
          );
        }),
      ),
    );
  }
}

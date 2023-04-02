import 'package:advance_form/soal_eksplorasi/login_page.dart';
import 'package:advance_form/soal_prioritas1/contacs_page.dart';
import 'package:flutter/material.dart';
//import 'package:advance_form/soal_prioritas1/contacs_page.dart';
import 'package:advance_form/soal_prioritas2/update_delete_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: UpdateDeletePage(),
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginPage(),
        //'/': (_) => const UpdateDeletePage(),
        '/contact': (_) => const UpdateDeletePage()
      },
    );
  }
}

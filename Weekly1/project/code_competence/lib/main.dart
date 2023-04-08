import 'package:code_competence/login_contact.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: LoginContact(),
      initialRoute: '/',
      routes: {
        '/': (_) => const LoginContact(),
      },
    );
  }
}

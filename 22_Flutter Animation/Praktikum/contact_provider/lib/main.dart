import 'package:flutter/material.dart';
//import 'list_contact.dart';
import 'list_contact_provider.dart';
import 'package:provider/provider.dart';
import 'package:contact_provider/stores/contact.dart' as contact_store;

/* void main() {
  runApp(const MyApp());
} */

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => contact_store.Contact(),
        )
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListContactProvider(),
    );
  }
}
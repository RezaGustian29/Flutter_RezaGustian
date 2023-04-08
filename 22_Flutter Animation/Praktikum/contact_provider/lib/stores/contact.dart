import 'package:flutter/material.dart';
import 'package:contact_provider/model.dart';

class Contact with ChangeNotifier {
  final List<GetContact> _contacts = [];
  List<GetContact> get contacts => _contacts;

  void add(GetContact contact) {
    _contacts.add(contact);
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class RadioController with ChangeNotifier {
  int _selectedRadio = 0;

  int get selectedRadio => _selectedRadio;

  set selectedRadio(int value) {
    _selectedRadio = value;
    notifyListeners();
  }
}

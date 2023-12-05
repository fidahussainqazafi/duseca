import 'package:flutter/material.dart';

class IsChecked with ChangeNotifier {
  var _isChecked = false;

  bool get isChecked => _isChecked;

  set isChecked(bool value) {
    _isChecked = value;
    notifyListeners();
  }
}

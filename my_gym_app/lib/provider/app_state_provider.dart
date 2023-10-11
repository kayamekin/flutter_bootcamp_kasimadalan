import 'package:flutter/material.dart';

class AppState with ChangeNotifier {
  int selectedIndex = 0;

  void updateSelectedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

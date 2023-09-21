import 'package:flutter/material.dart';

class Suha with ChangeNotifier {
  int changecount44 = 0;
  int get changcount22 => changecount44;
  void incriment() {
    changecount44++;
    notifyListeners();
  }
}

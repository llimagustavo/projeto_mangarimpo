import 'package:flutter/material.dart';

class AppController with ChangeNotifier {
  static AppController instance = AppController();
  
  bool isDartTheme = false;
  changeTheme(){
    isDartTheme = !isDartTheme;
    notifyListeners();
  }
}
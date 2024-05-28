import 'package:flutter/material.dart';
import 'package:shop_app/themes/dark_mode.dart';
import 'package:shop_app/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData  _themeData =  lightMode;

  ThemeData get themeData => _themeData;

  set themeData (ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  bool get isDarkMode => _themeData == darkMode;

  void toggleTheme(){
    if (_themeData == lightMode){
      themeData = darkMode;
    }
    else{
      themeData = lightMode;
    }
  }
}
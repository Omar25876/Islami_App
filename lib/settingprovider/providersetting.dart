import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier{

  String currentlocal = "en";
  ThemeMode cuurrenttheme = ThemeMode.light;

  changecurrentlocal(String newlocal){
    currentlocal = newlocal;
    notifyListeners();
  }

  changecurrenttheme(ThemeMode newtheme){
    cuurrenttheme = newtheme;
    notifyListeners();
  }
}
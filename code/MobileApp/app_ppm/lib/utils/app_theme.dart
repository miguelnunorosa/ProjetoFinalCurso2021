import 'package:flutter/material.dart';

class AppTheme{

  static Color _primaryColor = Color(0xffe0c202);
  static Color _accentColor = Color(0xffb62100);


  Color get primaryColor => _primaryColor;
  Color get accentColor => _accentColor;
  ThemeData get themeData => _themeData;


  static final ThemeData _themeData = ThemeData(
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.white),
    indicatorColor: Colors.white,
    primaryColor: _primaryColor,
    primaryColorBrightness: Brightness.dark,
    accentColor: _accentColor,
    accentColorBrightness: Brightness.dark,
  );

}
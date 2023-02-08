import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeProvider extends ChangeNotifier {
  late ThemeData _selectedTheme;
  late Typography defaultTypography;
  late SharedPreferences prefs;

  ThemeData dark = ThemeData.dark().copyWith();

  ThemeData light = ThemeData.light().copyWith();

  ThemeProvider(bool isDarkMode) {
    _selectedTheme = isDarkMode ? dark : light;
  }

  Future<void> swapTheme() async {
    prefs = await SharedPreferences.getInstance();

    if (_selectedTheme == dark) {
      _selectedTheme = light;
      await prefs.setBool("darkTheme", false);
    } else {
      _selectedTheme = dark;
      await prefs.setBool("darkTheme", true);
    }

    notifyListeners();
  }

  ThemeData getTheme() => _selectedTheme;
}





































// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';

// class ThemeProvider extends ChangeNotifier {
//   late ThemeData _selectedtheme;
//   //declare light,dark  theme
//   ThemeData light = ThemeData.light();
//   ThemeData dark = ThemeData.dark();

// //constructor to select a d/l theme
//   ThemeProvider({required bool isDarkMode}) {
//     _selectedtheme = isDarkMode ? dark : light;
//   }
//   //the swaping between themes
//   void swapTheme() {
//     _selectedtheme = _selectedtheme == dark ? light : dark;
//     notifyListeners();
//   }

//   //getter method to get the theme
//   ThemeData get getTheme => _selectedtheme;
// }

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vplayer/theme/dark_mode.dart';
import 'package:vplayer/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  
  ThemeData _themedata = lightMode;

  ThemeData get themeData =>_themedata ;

  bool get isDarkMode => _themedata == darkMode;

  set themedata(ThemeData themeData){
    _themedata = themeData;
    notifyListeners();
  }

 void toggleTheme(bool isDark) {
    _themedata = isDark ? darkMode : lightMode;
    notifyListeners();
  }

}


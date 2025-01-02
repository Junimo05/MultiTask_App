import 'package:flutter/material.dart';
import 'package:multitask_fe/constants/contants.dart';
import 'package:multitask_fe/utils/shared_prefs.dart';

class ThemeProvider with ChangeNotifier {
  final currentMode = SharedPrefs().getString(Constants.themeModeKey);
  late ThemeMode _themeMode;
  ThemeMode get themeMode => _themeMode;
  ThemeProvider() {
    if (currentMode == 'dark') {
      _themeMode = ThemeMode.dark;
    } else if (currentMode == 'light') {
      _themeMode = ThemeMode.light;
    } else {
      _themeMode = ThemeMode.system;
    }
  }

  void setThemeMode(ThemeMode mode) {
    _themeMode = mode;
    SharedPrefs()
        .setString(Constants.themeModeKey, mode.toString().split('.').last);
    notifyListeners();
  }

  void changeThemeMode() {
    //change dark mode to light mode and vice versa
    if (_themeMode == ThemeMode.dark) {
      setThemeMode(ThemeMode.light);
    } else {
      setThemeMode(ThemeMode.dark);
    }
    notifyListeners();
  }
}

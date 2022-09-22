import 'package:flutter/material.dart';

enum Themes {
  lightTheme,
  darkTheme;
}

class ThemeService extends ChangeNotifier {
  ThemeData _currentTheme = darkTheme();
  ThemeData get currentTheme => _currentTheme;
  Themes activeTheme = Themes.darkTheme;

  get changeTheme => setTheme =
      activeTheme == Themes.darkTheme ? Themes.lightTheme : Themes.darkTheme;

  switchTheme(Themes theme) {
    activeTheme = theme;
    switch (activeTheme) {
      case Themes.lightTheme:
        _currentTheme = lightTheme();
        break;
      case Themes.darkTheme:
        _currentTheme = darkTheme();
        break;
      default:
    }
    notifyListeners();
  }

  set setTheme(Themes theme) {
    switch (theme) {
      case Themes.lightTheme:
        switchTheme(Themes.lightTheme);
        break;
      case Themes.darkTheme:
        switchTheme(Themes.darkTheme);
        break;
    }
  }

  static ThemeData lightTheme() => ThemeData(primarySwatch: Colors.indigo);

  static ThemeData darkTheme() =>
      ThemeData(colorScheme: const ColorScheme.dark());
}

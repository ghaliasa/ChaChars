// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class ThemeController {
  final lightTheme = ThemeData.light().copyWith(
    canvasColor: Colors.pink,
    cardColor: Colors.yellow.shade100,
    unselectedWidgetColor: Colors.yellow.shade100,
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.yellow.shade50,
    ),
    scaffoldBackgroundColor: Colors.yellow.shade100,
    iconTheme: const IconThemeData(
      color: Color.fromRGBO(
        255,
        139,
        126,
        0.7,
      ),
    ),
    backgroundColor: Colors.amber.withOpacity(
      0.1,
    ),
    appBarTheme: AppBarTheme(
      color: const Color(0x00de6161).withOpacity(
        0.95,
      ),
    ),
    splashColor: const Color(
      0x00ffafbd,
    ).withOpacity(
      0.4,
    ),
    bottomAppBarColor: Colors.brown.shade200.withOpacity(
      0.1,
    ),
  );

  // ignore: non_constant_identifier_names
  final DarkTheme = ThemeData.dark().copyWith(
    canvasColor: Colors.purple,
    cardColor: Colors.purple,
    unselectedWidgetColor: Colors.blue,
    drawerTheme: DrawerThemeData(
      backgroundColor: Colors.blue.shade100,
    ),
    scaffoldBackgroundColor: Colors.blue.shade100,
    backgroundColor: Colors.blue.shade500.withOpacity(
      0.6,
    ),
    iconTheme: IconThemeData(
      color: Colors.blue.shade500,
    ),
    appBarTheme: AppBarTheme(
      color: Colors.blue.shade900,
    ),
    splashColor: const Color(
      0x00ffafbd,
    ).withOpacity(
      0.4,
    ),
    bottomAppBarColor: Colors.blue.shade600,
  );

  final GetStorage _getStorage = GetStorage();
  final _darkThemeKey = 'isDark';

  void saveThemData(bool isDarkMode) {
    _getStorage.write(_darkThemeKey, isDarkMode);
  }

  bool isSaveMode() {
    return _getStorage.read(_darkThemeKey) ?? false;
  }

  ThemeMode getThemeMode() {
    return isSaveMode() ? ThemeMode.dark : ThemeMode.light;
  }

  void change() {
    Get.changeThemeMode(isSaveMode() ? ThemeMode.light : ThemeMode.dark);
    saveThemData(!isSaveMode());
  }
}

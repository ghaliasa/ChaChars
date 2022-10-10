import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/ThemeController.dart';
import '../models/UserModel.dart';
import '../views/SignUp.dart';
import '../views/splashandup&in/SplashToBottom.dart';
import '../views/splashandup&in/SplashToHome.dart';
import '../views/splashandup&in/SplashToSignIn.dart';
import 'static/static.dart';
import 'value/translation.dart';

void main() async {
  await GetStorage.init();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    appSong.play(AssetSource("appSong.mp3"));
    appSong.onPlayerComplete.listen((event) {
      appSong.play(AssetSource("appSong.mp3"));
    });
    // ignore: avoid_print
    print(box.read('user'));
    box.read('user') != null
        ? userModel1 = UserModel.fromJson(
            json.decode(
              box.read('user'),
            ),
          )
        : userModel1 = null;
    return GetMaterialApp(
      translations: Translation(),
      locale: Locale('${box.read("lang")}'),
      fallbackLocale: const Locale('en'),
      theme: ThemeController().lightTheme,
      darkTheme: ThemeController().DarkTheme,
      themeMode: ThemeController().getThemeMode(),
      debugShowCheckedModeBanner: false,
      home: (userModel1 == null)
          ? const SplashToBottom()
          : userModel1 != null && userModel1!.isLogout == 1
              ? const SplashToSignIn()
              : userModel1 != null && userModel1!.isLogout == 0
                  ? const SplashToHome()
                  : null,
    );
  }
}

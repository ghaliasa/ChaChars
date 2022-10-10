// ignore_for_file: file_names, unused_local_variable

import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/UserModel.dart';
import '../models/char.dart';
import '../static/static.dart';
import '../static/static_chars.dart';
import '../views/Alphabet.dart';
import '../views/Drawer.dart';
import '../views/SignUp.dart';
import '../views/mycomponent/MyLottieContainer.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

// ignore: camel_case_types
class _HomeState extends State<Home> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    if (box.read("dir") != null) {
      direction = box.read("dir");
    }
    appSong.setVolume(0.9);
    userModel1 = UserModel.fromJson(
      json.decode(
        box.read('user'),
      ),
    );
    double sum = 0;
    int charCounter = 0;
    for (Char char in StaticChars().capital()) {
      if (box.read("rate${char.getName}") != null) {
        charCounter++;
        sum += box.read("rate${char.getName}");
      }
    }
    for (Char char in StaticChars().small()) {
      if (box.read("rate${char.getName}") != null) {
        charCounter++;
        sum += box.read("rate${char.getName}");
      }
    }
    for (Char char in StaticChars().numbers()) {
      if (box.read("rate${char.getName}") != null) {
        charCounter++;
        sum += box.read("rate${char.getName}");
      }
    }
    for (Char char in StaticChars().ArabicLetter()) {
      if (box.read("rate${char.getName}") != null) {
        charCounter++;
        sum += box.read("rate${char.getName}");
      }
    }
    for (Char char in StaticChars().ArabicNumbers()) {
      if (box.read("rate${char.getName}") != null) {
        charCounter++;
        sum += box.read("rate${char.getName}");
      }
    }
    if (charCounter > 0) {
      userModel1!.setRate = (sum / charCounter).round();
      box.write(
        "user",
        json.encode(
          userModel1?.toJson(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
        textDirection: direction ? TextDirection.ltr : TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "ChaChars",
            ),
            foregroundColor: Theme.of(context).unselectedWidgetColor,
            titleTextStyle: GoogleFonts.crimsonPro(
              fontSize: 23,
              color: Theme.of(context).unselectedWidgetColor,
            ),
          ),
          drawer: const MyDrawer(),
          body: ListView(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 3.5,
                decoration: BoxDecoration(
                  borderRadius: direction
                      ? const BorderRadius.only(
                          bottomRight: Radius.circular(50))
                      : const BorderRadius.only(
                          bottomLeft: Radius.circular(50)),
                  color: Theme.of(context)
                      .appBarTheme
                      .backgroundColor!
                      .withOpacity(
                        0.3,
                      ),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Positioned(
                        top: MediaQuery.of(context).size.height / 10,
                        left: 0,
                        child: Container(
                          height: MediaQuery.of(context).size.height / 8,
                          width: MediaQuery.of(context).size.width / 1.5,
                          decoration: BoxDecoration(
                            color: Theme.of(context).unselectedWidgetColor,
                            borderRadius: direction
                                ? const BorderRadius.only(
                                    topRight: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                  )
                                : const BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomLeft: Radius.circular(50),
                                  ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.centerStart,
                      child: Positioned(
                        top: MediaQuery.of(context).size.height / 7,
                        child: Text(
                          "   What do you want to learn?".tr,
                          style: GoogleFonts.crimsonPro(
                            fontSize: 18,
                            color: Theme.of(context).canvasColor,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: MyLottieContainer(
                  lottie: 'assets/ezgif-4-74d585dfd8.mp4.lottie.json',
                  onpressed: () {
                    start.play(AssetSource("start.wav"));
                    Get.to(Alphabet(
                      chars: StaticChars().ArabicLetter(),
                      ratio: 1.2,
                    ));
                  },
                  text: "Arabic Chars".tr,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: MyLottieContainer(
                  lottie: 'assets/ezgif-2-f8f90b855f.mp4.lottie.json',
                  onpressed: () {
                    start.play(AssetSource("start.wav"));
                    Get.to(
                      Alphabet(
                        chars: StaticChars().ArabicNumbers(),
                        ratio: 0.8,
                      ),
                    );
                  },
                  text: "Arabic Num".tr,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: MyLottieContainer(
                  lottie: 'assets/ezgif-4-6a4f9c735c.mp4.lottie.json',
                  onpressed: () {
                    start.play(AssetSource("start.wav"));
                    Get.to(
                      Alphabet(
                        chars: StaticChars().capital(),
                        ratio: 0.8,
                      ),
                    );
                  },
                  text: "Capital Chars".tr,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: MyLottieContainer(
                  lottie: 'assets/ezgif-2-376ea4feb5.mp4.lottie.json',
                  onpressed: () {
                    start.play(AssetSource("start.wav"));
                    Get.to(
                      Alphabet(
                        chars: StaticChars().small(),
                        ratio: 1.0,
                      ),
                    );
                  },
                  text: "Small Chars".tr,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: MyLottieContainer(
                  lottie: 'assets/ezgif-2-71d86c16df.mp4.lottie.json',
                  onpressed: () {
                    start.play(AssetSource("start.wav"));
                    Get.to(Alphabet(
                      chars: StaticChars().numbers(),
                      ratio: 0.8,
                    ));
                  },
                  text: "Numbers Chars".tr,
                ),
              ),
            ],
          ),
        ));
  }

  @override
  void dispose() {
    super.dispose();
    appSong.stop();
  }
}

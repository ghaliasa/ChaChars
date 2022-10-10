// ignore_for_file: file_names

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../static/static.dart';
import '../About.dart';
import '../mycomponent/MyButton.dart';
import '../signup.dart';

class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => BottomState();
}

class BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyButton(
            width: MediaQuery.of(context).size.width / 2.6,
            height: MediaQuery.of(context).size.height / 12,
            colorDecoration: Colors.yellow.shade100,
            colorShadow: Colors.yellow.shade100,
            colorBorder: Colors.yellow.shade100,
            colorText: const Color.fromRGBO(59, 39, 250, 0.9),
            text: 'sign up'.tr,
            onPressed: () {
              Get.offAll(const SignUp());
              select.play(AssetSource("select.wav"));
            },
            fontsize: 25,
            widthBorder: 2.0,
            circularBorder: 20,
          ),
          const SizedBox(height: 18.0),
          InkWell(
            child: Center(
              child: Text(
                'about'.tr,
                style: GoogleFonts.crimsonPro(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 13,
                  color: const Color.fromRGBO(59, 39, 250, 0.9),
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
            onTap: () {
              Get.to(About());
            },
          ),
          const SizedBox(height: 40.0),
        ],
      ),
    );
  }
}

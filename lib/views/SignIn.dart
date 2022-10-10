// ignore_for_file: file_names

import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';

import '../static/static.dart';
import '../views/SignUp.dart';
import '../views/mycomponent/AnimatedAmage.dart';
import '../views/mycomponent/MyButton.dart';
import '../views/mycomponent/MyCenterText.dart';
import '../views/mycomponent/MyContainerTextField.dart';
import 'Home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

TextEditingController nameController1 = TextEditingController();
TextEditingController passController1 = TextEditingController();

bool securetext = true;

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    final topPadding = MediaQuery.of(context).padding.top * 0.3;
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: ListView(
          children: [
            SizedBox(height: topPadding),
            const SizedBox(height: 10),
            Theme.of(context).scaffoldBackgroundColor == Colors.yellow.shade100
                ? AnimatedImage(image: "assets/signin.jpg")
                : AnimatedImage(image: "assets/signinblue.jpg"),
            MyTextCenter(text: "Sign In".tr),
            const SizedBox(height: 20),
            MyContainertextfield(
                nameController: nameController1,
                text: 'Full Name'.tr,
                gestureDetector: GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.person,
                    color: Colors.blue.shade400,
                  ),
                ),
                securetext: false),
            const SizedBox(
              height: 20,
            ),
            MyContainertextfield(
                nameController: passController1,
                text: 'Password'.tr,
                gestureDetector: GestureDetector(
                  onTap: () {
                    setState(() {
                      securetext = !securetext;
                    });
                  },
                  child: Icon(
                    securetext ? Icons.visibility : Icons.visibility_off,
                    color: Colors.blue.shade400,
                  ),
                ),
                securetext: securetext),
            const SizedBox(
              height: 30,
            ),
            MyButton(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 21,
              colorDecoration: Colors.blue.shade100,
              colorShadow: Theme.of(context).splashColor,
              colorBorder: Colors.yellow.shade100,
              colorText: Colors.blue,
              text: "submit".tr,
              onPressed: () {
                if ((nameController1.text.isEmpty ||
                    passController1.text.isEmpty)) {
                  MotionToast.error(
                    description: Text(
                      "Please enter your information".tr,
                    ),
                    title: Text(
                      "Fail".tr,
                    ),
                  ).show(context);
                  fail.play(AssetSource("fail.wav"));
                } else if (nameController1.text != userModel1!.getfullName ||
                    passController1.text != userModel1!.getPassword) {
                  MotionToast.error(
                    description: Text(
                      "Correct your information".tr,
                    ),
                    title: Text(
                      "Fail".tr,
                    ),
                  ).show(context);
                  nameController1.clear();
                  passController1.clear();
                  fail.play(AssetSource("fail.wav"));
                } else {
                  userModel1!.isLogout = 0;
                  box.write(
                    'user',
                    json.encode(
                      userModel1!.toJson(),
                    ),
                  );
                  Get.offAll(const Home());
                  win.play(AssetSource("win.wav"));

                  nameController1.clear();
                  passController1.clear();
                }
              },
              fontsize: 12,
              widthBorder: 1.0,
              circularBorder: 10,
            ),
          ],
        ),
      ),
    );
  }
}

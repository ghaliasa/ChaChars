// ignore_for_file: file_names

import 'dart:convert';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:motion_toast/motion_toast.dart';

import '../models/UserModel.dart';
import '../static/static.dart';
import '../views/Home.dart';
import '../views/mycomponent/AnimatedAmage.dart';
import '../views/mycomponent/MyButton.dart';
import '../views/mycomponent/MyCenterText.dart';
import '../views/mycomponent/MyContainerTextField.dart';
import '../views/mycomponent/MyPopUpMenu.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

UserModel? userModel1;
TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();
bool securetext = true;
int ff = 0;

class _SignUpState extends State<SignUp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.shade100,
      body: ListView(
        children: [
          AnimatedImage(
            image: "assets/signup.jpg",
          ),
          MyTextCenter(
            text: "sign up".tr,
          ),
          const SizedBox(
            height: 20,
          ),
          MyContainertextfield(
            nameController: nameController,
            text: 'Full Name'.tr,
            gestureDetector: GestureDetector(
              child: Icon(
                Icons.person,
                color: Colors.blue.shade400,
              ),
            ),
            securetext: false,
          ),
          const SizedBox(
            height: 20,
          ),
          MyContainertextfield(
            nameController: passController,
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
            securetext: securetext,
          ),
          const SizedBox(
            height: 20,
          ),
Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
              ),
              MyButton(
                  width: MediaQuery.of(context).size.width / 7,
                  height: MediaQuery.of(context).size.height / 21,
                  colorDecoration: const Color.fromRGBO(255, 139, 126, 0.1),
                  colorShadow: Theme.of(context).splashColor,
                  colorBorder: Colors.yellow.shade100,
                  colorText: Colors.blue,
                  text: ff.toString(),
                  onPressed: () {},
                  fontsize: 10,
                  widthBorder: 1.0,
                  circularBorder: 10),
              PopupMenuButton(
                icon: Icon(
                  Icons.mode_outlined,
                  color: Colors.blue.shade400,
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    child: MyPopUpMenu(
                      text: "3 years",
                      onpressed: () {
                        setState(() {
                          ff = 3;
                        });
                        Navigator.pop(context, false);
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: MyPopUpMenu(
                      text: "4 years",
                      onpressed: () {
                        setState(() {
                          ff = 4;
                        });
                        Navigator.pop(context, false);
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: MyPopUpMenu(
                      text: "5 years",
                      onpressed: () {
                        setState(() {
                          ff = 5;
                        });
                        Navigator.pop(context, false);
                      },
                    ),
                  ),
                  PopupMenuItem(
                    child: MyPopUpMenu(
                      text: "6 years",
                      onpressed: () {
                        setState(() {
                          ff = 6;
                        });
                        Navigator.pop(context, false);
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
         const SizedBox(
            height: 40,
          ),
          MyButton(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 21,
            colorDecoration: const Color.fromRGBO(255, 139, 126, 0.1),
            colorShadow: Theme.of(context).splashColor,
            colorBorder: Colors.yellow.shade100,
            colorText: Colors.blue,
            text: "submit".tr,
            onPressed: () {
              if ((nameController.text.isEmpty ||
                  passController.text.isEmpty ||
                  ff == 0)) {
                MotionToast.error(
                  description: Text("Please complete your information".tr),
                  title: Text("Fail".tr),
                ).show(context);
                fail.play(AssetSource("fail.wav"));
              } else if (nameController.text.length <= 8 ||
                  passController.text.length <= 8) {
                MotionToast.error(
                  description:
                      Text("Name & Password should more than 8 letters".tr),
                  title:  Text("Fail".tr),
                ).show(context);
                nameController.clear();
                passController.clear();
                fail.play(AssetSource("fail.wav"));
              } else {
                userModel1 = UserModel(
                  age: ff,
                  fullName: nameController.text,
                  password: passController.text,
                  isLogout: 0,
                  rate: 0,
                );
                box.write(
                  "user",
                  json.encode(
                    userModel1?.toJson(),
                  ),
                );
                userModel1 = UserModel.fromJson(
                  json.decode(
                    box.read("user"),
                  ),
                );
                Get.offAll(
                  const Home(),
                );

                nameController.clear();
                passController.clear();
                win.play(AssetSource("win.wav"));
              }
            },
            widthBorder: 1.0,
            circularBorder: 10,
            fontsize: 12,
          ),
        ],
      ),
    );
  }
}

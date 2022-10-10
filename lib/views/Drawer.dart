// ignore_for_file: file_names

import 'dart:convert';

import 'package:ChaChars/views/Home.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../controllers/ThemeController.dart';
import '../models/UserModel.dart';
import '../static/static.dart';
import '../views/About.dart';
import '../views/MyButtonGraph.dart';
import '../views/SignUp.dart';
import '../views/mycomponent/MyButton.dart';
import '../views/mycomponent/MyRow.dart';
import '../views/splashandup&in/SplashToBottom.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

List<Item> settings = generateItems(1);

bool b = true;

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      //backgroundColor: Colors.yellow.shade100,
      child: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 20,
          ),
          MyButton(
            width: MediaQuery.of(context).size.width / 4,
            height: MediaQuery.of(context).size.height / 16,
            colorDecoration: Theme.of(context).canvasColor.withOpacity(0.2),
            colorShadow: Theme.of(context).splashColor,
            colorBorder: Theme.of(context).canvasColor.withOpacity(0.6),
            colorText: Theme.of(context).canvasColor.withOpacity(0.9),
            text: "Account".tr,
            onPressed: () {},
            fontsize: 22,
            circularBorder: 0,
            widthBorder: 2.0,
          ),
          Divider(
            thickness: 1,
            color: Theme.of(context).canvasColor.withOpacity(0.4),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 60,
          ),
          MyRow(
            icon: const Icon(
              Icons.person,
              //color: Color.fromRGBO(255, 139, 126, 0.7),
            ),
            text: userModel1!.fullName,
            fontsize: 20,
          ),
          MyRow(
            icon: const Icon(
              Icons.point_of_sale,
              //color: Color.fromRGBO(255, 139, 126, 0.7),
            ),
            text: '${userModel1!.rate}' ' ' + ("rate".tr),
            fontsize: 20,
          ),
          MyRow(
            icon: const Icon(
              Icons.date_range,
              //color: Color.fromRGBO(255, 139, 126, 0.7),
            ),
            text: '${userModel1!.age}' + ('years'.tr),
            fontsize: 20,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 60,
          ),
          Divider(
            thickness: 1,
            color: Theme.of(context).canvasColor.withOpacity(0.4),
          ),
          InkWell(
            child: MyRow(
                icon: const Icon(
                  Icons.auto_graph,
                ),
                text: "forParent".tr,
                fontsize: 20),
            onTap: () {
              opendialog();
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height / 70,
          ),
          ExpansionPanelList(
            elevation: 0,
            expansionCallback: (panelIndex, isExpanded) {
              setState(() {
                settings[panelIndex].isExpanded = !isExpanded;
              });
            },
            children: settings.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(
                backgroundColor: Theme.of(context).drawerTheme.backgroundColor,
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return MyRow(
                    icon: item.icon,
                    text: item.name.tr,
                    fontsize: 20,
                  );
                },
                body: Column(
                  children: [
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: MyRow(
                          icon: const Icon(
                            Icons.color_lens,
                          ),
                          text: "Change Color".tr,
                          fontsize: 12,
                        ),
                      ),
                      onTap: () {
                        ThemeController().change();
                        Navigator.pop(context);
                      },
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: MyRow(
                          icon: const Icon(
                            Icons.abc,
                          ),
                          text: "Change Lang".tr,
                          fontsize: 12,
                        ),
                      ),
                      onTap: () {
                        if (direction) {
                          Get.updateLocale(const Locale('ar'));
                          box.write("lang", "ar");
                          box.write("dir", false);
                        } else {
                          Get.updateLocale(const Locale('en'));
                          box.write("lang", "en");
                          box.write("dir", true);
                        }
                        setState(() {
                          direction = !direction;
                        });
                        Navigator.pop(context);
                      },
                    ),
                    InkWell(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: MyRow(
                          icon: b
                              ? Icon(Icons.music_note)
                              : Icon(Icons.music_off_outlined),
                          text: "Sound".tr,
                          fontsize: 12,
                        ),
                      ),
                      onTap: () {
                        if (b) {
                          appSong.stop();
                        } else {
                          appSong.resume();
                        }
                        setState(() {
                          b = !b;
                        });

                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 40,
          ),
          InkWell(
            child: MyRow(
              icon: const Icon(
                Icons.info_outline,
              ),
              text: "about".tr,
              fontsize: 20,
            ),
            onTap: () {
              Navigator.pop(context);
              Get.to(About());
              // Get.to(ConfettiSample());
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height / 40,
          ),
          GestureDetector(
            child: MyRow(
              icon: const Icon(
                Icons.outbond,
              ),
              text: "LogOut".tr,
              fontsize: 20,
            ),
            onTap: () {
              userModel1?.isLogout = 1;
              box.write(
                'user',
                json.encode(
                  userModel1?.toJson(),
                ),
              );
              userModel1 = UserModel.fromJson(
                json.decode(
                  box.read("user"),
                ),
              );
              Get.offAll(const SplashToBottom());
              SystemNavigator.pop();
              fail.play(AssetSource("fail.wav"));
            },
          ),
          Container(
            height: MediaQuery.of(context).size.height / 40,
          ),
          GestureDetector(
            child: MyRow(
              icon: const Icon(
                Icons.delete,
              ),
              text: "Delete Account".tr,
              fontsize: 20,
            ),
            onTap: () {
              box.erase();
              Get.offAll(const SplashToBottom());
              SystemNavigator.pop();
              fail.play(AssetSource("fail.wav"));
            },
          ),
        ],
      ),
    );
  }

  Future opendialog() => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          titleTextStyle: GoogleFonts.crimsonPro(
              textStyle: Theme.of(context).textTheme.headline4,
              fontSize: 15,
              color: Theme.of(context).scaffoldBackgroundColor),
          backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
          title: Text("show progress in Train or Test??".tr),
          actions: [
            TextButton(
              onPressed: () {
                Get.off(Home());
                Get.to(
                  MyButtonGraph(
                    i: 0,
                  ),
                );
              },
              child: Text(
                "Train".tr,
                style: GoogleFonts.crimsonPro(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    color: Theme.of(context).scaffoldBackgroundColor),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.off(Home());
                Get.to(
                  MyButtonGraph(
                    i: 1,
                  ),
                );
              },
              child: Text(
                "Test".tr,
                style: GoogleFonts.crimsonPro(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 12,
                    color: Theme.of(context).scaffoldBackgroundColor),
              ),
            ),
          ],
        ),
      );
}

class Item {
  Icon icon;
  String name;
  bool isExpanded;

  Item({required this.icon, required this.name, this.isExpanded = false});
}

List<Item> generateItems(int numberOfItems) {
  return List.generate(numberOfItems, (index) {
    return Item(
      icon: const Icon(
        Icons.settings,
      ),
      name: "Settings".tr,
    );
  });
}

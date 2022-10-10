// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../static/static_chars.dart';
import '../views/Drawer.dart';
import '../views/Graph.dart';
import '../views/mycomponent/MyButton.dart';

// ignore: must_be_immutable
class MyButtonGraph extends StatefulWidget {
  int i;
  MyButtonGraph({Key? key, required this.i}) : super(key: key);

  @override
  State<MyButtonGraph> createState() => _MyButtonGraphState();
}

class _MyButtonGraphState extends State<MyButtonGraph> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text("ChaChars"),
          foregroundColor: Theme.of(context).unselectedWidgetColor,
          titleTextStyle: GoogleFonts.crimsonPro(
            fontSize: 23,
            color: Theme.of(context).unselectedWidgetColor,
          )),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5.2,
          ),
          MyButton(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              colorDecoration: Theme.of(context).appBarTheme.backgroundColor!,
              colorShadow: const Color.fromRGBO(255, 139, 126, 0.3),
              colorBorder: Theme.of(context).canvasColor.withOpacity(0.4),
              colorText: Theme.of(context).unselectedWidgetColor,
              text: "Progress in arabic chars..".tr,
              onPressed: () {
                Get.to(
                  Graph(
                    i: widget.i,
                    data: StaticChars().ArabicLetter(),
                  ),
                );
              },
              fontsize: 20,
              widthBorder: 2.0,
              circularBorder: 10),
          Container(
            height: MediaQuery.of(context).size.height / 20,
          ),
          MyButton(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              colorDecoration: Theme.of(context).appBarTheme.backgroundColor!,
              colorShadow: const Color.fromRGBO(255, 139, 126, 0.3),
              colorBorder: Theme.of(context).canvasColor.withOpacity(0.4),
              colorText: Theme.of(context).unselectedWidgetColor,
              text: "Progress in arabic num..".tr,
              onPressed: () {
                Get.to(
                  Graph(i: widget.i, data: StaticChars().ArabicNumbers()),
                );
              },
              fontsize: 20,
              widthBorder: 2.0,
              circularBorder: 10),
          Container(
            height: MediaQuery.of(context).size.height / 20,
          ),
          MyButton(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              colorDecoration: Theme.of(context).appBarTheme.backgroundColor!,
              colorShadow: const Color.fromRGBO(255, 139, 126, 0.3),
              colorBorder: Theme.of(context).canvasColor.withOpacity(0.4),
              colorText: Theme.of(context).unselectedWidgetColor,
              text: "Progress in capital chars..".tr,
              onPressed: () {
                Get.to(
                  Graph(
                    i: widget.i,
                    data: StaticChars().capital(),
                  ),
                );
              },
              fontsize: 20,
              widthBorder: 2.0,
              circularBorder: 10),
          Container(
            height: MediaQuery.of(context).size.height / 20,
          ),
          MyButton(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              colorDecoration: Theme.of(context).appBarTheme.backgroundColor!,
              colorShadow: const Color.fromRGBO(255, 139, 126, 0.3),
              colorBorder: Theme.of(context).canvasColor.withOpacity(0.4),
              colorText: Theme.of(context).unselectedWidgetColor,
              text: "Progress in small chars..".tr,
              onPressed: () {
                Get.to(
                  Graph(
                    i: widget.i,
                    data: StaticChars().small(),
                  ),
                );
              },
              fontsize: 20,
              widthBorder: 2.0,
              circularBorder: 10),
          Container(
            height: MediaQuery.of(context).size.height / 20,
          ),
          MyButton(
              width: MediaQuery.of(context).size.width / 1.5,
              height: MediaQuery.of(context).size.height / 16,
              colorDecoration: Theme.of(context).appBarTheme.backgroundColor!,
              colorShadow: const Color.fromRGBO(255, 139, 126, 0.3),
              colorBorder: Theme.of(context).canvasColor.withOpacity(0.4),
              colorText: Theme.of(context).unselectedWidgetColor,
              text: "Progress in number chars..".tr,
              onPressed: () {
                Get.to(
                  Graph(
                    i: widget.i,
                    data: StaticChars().numbers(),
                  ),
                );
              },
              fontsize: 20,
              widthBorder: 2.0,
              circularBorder: 10),
        ],
      ),
    );
  }
}

// ignore_for_file: file_names, must_be_immutable, use_key_in_widget_constructors, unnecessary_null_comparison

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:popover/popover.dart';

import '../../models/char.dart';
import '../../static/static.dart';
import '../drawing_bored.dart';
import 'MyCircle.dart';

class MyCharContainer extends StatefulWidget {
  Char char;

  MyCharContainer({Key? key, required this.char}) : super(key: key);

  @override
  State<MyCharContainer> createState() => _MyCharContainerState();
}

class _MyCharContainerState extends State<MyCharContainer> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.yellow.shade100,
          border: Border.all(width: 2.0),
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              "images/${widget.char.getImage}",
            ),
          ),
        ),
      ),
      onTap: () {
        showPopover(
          context: context,
          transitionDuration: const Duration(milliseconds: 150),
          bodyBuilder: (context) => ListItems(char: widget.char),
          direction: PopoverDirection.top,
          width: 170,
          height: 200,
          arrowHeight: 15,
          arrowWidth: 30,
        );
      },
    );
  }
}

class ListItems extends StatefulWidget {
  Char char;

  ListItems({Key? key, required this.char}) : super(key: key);

  @override
  State<ListItems> createState() => _ListItemsState();
}

TextEditingController numcontroller = TextEditingController();

class _ListItemsState extends State<ListItems> {
  double rateTrain = 0;
  double rateTest = 0;
  bool isLearn = false;
  bool isTrain = false;
  bool isTest = false;

  @override
  void initState() {
    super.initState();
    if (box.read("isLearn${widget.char.getName}") != null) {
      isLearn = box.read("isLearn${widget.char.getName}");
    }
    if (box.read("isTrain${widget.char.getName}") != null) {
      isTrain = box.read("isTrain${widget.char.getName}");
    }
    if (box.read("isTest${widget.char.getName}") != null) {
      isTest = box.read("isTest${widget.char.getName}");
    }
    if (box.read("rateTrain${widget.char.getName}") != null) {
      rateTrain = box.read("rateTrain${widget.char.getName}");
    }
    if (box.read("rateTest${widget.char.getName}") != null) {
      rateTest = box.read("rateTest${widget.char.getName}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            InkWell(
              onTap: () {
                click.play(AssetSource("click.wav"));
                Navigator.of(context)
                  ..pop()
                  ..push(
                    MaterialPageRoute<DrawingBoard>(
                      builder: (context) => DrawingBoard(
                        char: widget.char,
                        counter: 6,
                      ),
                    ),
                  );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    color: Theme.of(context)
                        .appBarTheme
                        .backgroundColor!
                        .withOpacity(0.5),
                    child: Center(
                      child: Text(
                        'Learn'.tr,
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                  MyCircle(
                    // ignore: prefer_if_null_operators
                    boolvalue: isLearn,
                  ),
                ],
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {
                if (isLearn) {
                  click.play(AssetSource("click.wav"));
                  Navigator.pop(context);
                  opendialog();
                } else {
                  fail.play(AssetSource("fail.wav"));
                  MotionToast.error(
                    description: Text("You must learn before".tr),
                    title: Text("Fail".tr),
                  ).show(context);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    color: Theme.of(context)
                        .appBarTheme
                        .backgroundColor!
                        .withOpacity(0.7),
                    child: Center(
                      child: Text(
                        ('Train'.tr) +
                            '\t(10/'
                                '${rateTrain.toString().substring(0, 3)})',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                  MyCircle(
                    // ignore: prefer_if_null_operators
                    boolvalue: isTrain,
                  ),
                ],
              ),
            ),
            const Divider(),
            InkWell(
              onTap: () {
                if (isTrain) {
                  if (box.read("rateTrain${widget.char.getName}") < 5) {
                    fail.play(AssetSource("fail.wav"));
                    MotionToast.error(
                      description: Text("Failed in train".tr),
                      title: Text("Fail".tr),
                    ).show(context);
                  } else {
                    click.play(AssetSource("click.wav"));
                    Navigator.of(context)
                      ..pop()
                      ..push(
                        MaterialPageRoute<DrawingBoard>(
                          builder: (context) => DrawingBoard(
                            char: widget.char,
                            counter: 7,
                          ),
                        ),
                      );
                  }
                } else {
                  fail.play(AssetSource("fail.wav"));
                  MotionToast.error(
                    description: Text("You must train before".tr),
                    title: Text("Fail".tr),
                  ).show(context);
                }
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    height: 50,
                    color: Theme.of(context)
                        .appBarTheme
                        .backgroundColor!
                        .withOpacity(0.99),
                    child: Center(
                      child: Text(
                        ('Test'.tr) +
                            '\t(10/'
                                '${rateTest.toString().substring(0, 3)})',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                  MyCircle(
                    // ignore: prefer_if_null_operators
                    boolvalue: isTest,
                  ),
                ],
              ),
            ),
          ],
        ),
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
          title: Text("How many times do you want to learn?".tr),
          content: TextField(
            decoration: InputDecoration(
              hintText: "Enter number from 1 to 5".tr,
              hintStyle: GoogleFonts.crimsonPro(
                  textStyle: Theme.of(context).textTheme.headline4,
                  fontSize: 10,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ),
            controller: numcontroller,
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (int.parse(numcontroller.text) > 5 ||
                    int.parse(numcontroller.text) <= 0) {
                  fail.play(AssetSource("fail.wav"));
                  MotionToast.error(
                    description: Text("Enter number from 1 to 5".tr),
                    title: Text("Fail".tr),
                  ).show(context);
                  numcontroller.clear();
                } else {
                  click.play(AssetSource("click.wav"));
                  Navigator.pop(context);
                  Get.to(
                    DrawingBoard(
                      char: widget.char,
                      counter: int.parse(numcontroller.text),
                    ),
                  );

                  numcontroller.clear();
                }
              },
              child: Text(
                "OK".tr,
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

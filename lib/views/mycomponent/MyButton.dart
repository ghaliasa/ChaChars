// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyButton extends StatelessWidget {
  double width, height;
  Color colorDecoration, colorShadow, colorBorder, colorText;
  String text;
  double fontsize, widthBorder, circularBorder;
  VoidCallback onPressed;
  MyButton(
      {Key? key,
      required this.width,
      required this.height,
      required this.colorDecoration,
      required this.colorShadow,
      required this.colorBorder,
      required this.colorText,
      required this.text,
      required this.onPressed,
      required this.fontsize,
      required this.widthBorder,
      required this.circularBorder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Center(
        child: Container(
          height: height,
          //MediaQuery.of(context).size.height / 16,
          width: width,
          //MediaQuery.of(context).size.width / 4,
          decoration: BoxDecoration(
            color: colorDecoration,
            //Color.fromRGBO(255, 139, 126, 0.3),
            shape: BoxShape.rectangle,
            boxShadow: [
              BoxShadow(
                color: colorShadow,
                //Color.fromRGBO(255, 139, 126, 0.3),
                spreadRadius: 0,
                blurRadius: 2,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            border: Border.all(
                color: colorBorder,
                //Color.fromRGBO(255, 139, 126, 0.3),
                width: widthBorder),
            borderRadius: BorderRadius.circular(circularBorder),
          ),
          child: Center(
            child: Text(
              text,
              //"Profile",
              style:
                  GoogleFonts.crimsonPro(fontSize: fontsize, color: colorText),
            ),
          ),
        ),
      ),
      onTap: onPressed,
    );
  }
}

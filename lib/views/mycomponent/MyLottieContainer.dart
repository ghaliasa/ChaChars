// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class MyLottieContainer extends StatelessWidget {
  String lottie;
  String text;
  VoidCallback onpressed;
  MyLottieContainer(
      {Key? key,
      required this.lottie,
      required this.onpressed,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.only(bottom: 10, top: 25),
        height: MediaQuery.of(context).size.height / 5,
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,

            //Colors.green.shade50,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(80.0),
            ),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade100,
                  offset: const Offset(-3, 0),
                  blurRadius: 20,
                  spreadRadius: 4),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_constructors
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  text,
                  style: GoogleFonts.crimsonPro(
                      fontSize: 20, color: Theme.of(context).canvasColor),
                ),
              ),
              Lottie.asset(lottie)
            ],
          ),
        ),
      ),
      onTap: onpressed,
    );
  }
}

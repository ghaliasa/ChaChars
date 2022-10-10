// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyTextCenter extends StatelessWidget {
  String text;
  MyTextCenter({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.crimsonPro(
          textStyle: Theme.of(context).textTheme.headline4,
          fontSize: 25,
          color: Colors.blue.shade400,
          fontStyle: FontStyle.normal,
        ),
      ),
    );
  }
}

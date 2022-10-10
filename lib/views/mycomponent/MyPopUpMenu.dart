// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyPopUpMenu extends StatelessWidget {
  String text;
  VoidCallback onpressed;
  MyPopUpMenu({Key? key, required this.text, required this.onpressed})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
        child: Text(
          text,
          style: GoogleFonts.genos(
            // textStyle: Theme.of(context).textTheme.headline4,
            fontSize: 15,
            color: Colors.blue.shade400,
            fontStyle: FontStyle.normal,
          ),
        ),
        onTap: onpressed);
  }
}

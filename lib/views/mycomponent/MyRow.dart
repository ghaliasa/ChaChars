// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyRow extends StatelessWidget {
  String text;
  Icon icon;
  double fontsize;
  MyRow(
      {Key? key,
      required this.icon,
      required this.text,
      required this.fontsize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(padding: const EdgeInsets.all(8.0), child: icon),
        Text(
          text,
          style: GoogleFonts.crimsonPro(
            fontSize: fontsize,
            color: Theme.of(context).canvasColor.withOpacity(0.9),
          ),
        ),
      ],
    );
  }
}

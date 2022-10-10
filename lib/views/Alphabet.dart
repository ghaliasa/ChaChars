// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/char.dart';
import '../static/static.dart';
import '../views/Drawer.dart';
import 'mycomponent/MyCharContainer.dart';

class Alphabet extends StatefulWidget {
  // int number;
  double ratio;

  // String text;
  List<Char> chars;

  Alphabet(
      {Key? key,
      /*required this.number*/ required this.ratio,
      required this.chars
      /*required this.text*/
      })
      : super(key: key);

  @override
  State<Alphabet> createState() => _AlphabetState();
}

class _AlphabetState extends State<Alphabet> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Directionality(
      textDirection: direction ? TextDirection.ltr : TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("ChaChars"),
            foregroundColor: Theme.of(context).unselectedWidgetColor,
            titleTextStyle: GoogleFonts.crimsonPro(
                fontSize: 23, color: Theme.of(context).unselectedWidgetColor)),
        drawer: const MyDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            itemCount: widget.chars.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 150,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              childAspectRatio: widget.ratio,
            ),
            itemBuilder: (context, index) => MyCharContainer(
              char: widget.chars[index],
            ),
          ),
        ),
      ),
    );
  }
}

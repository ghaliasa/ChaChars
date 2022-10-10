// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class MyContainertextfield extends StatelessWidget {
  TextEditingController nameController;
  String text;
  bool securetext;
  GestureDetector gestureDetector;
  MyContainertextfield(
      {Key? key,
      required this.nameController,
      required this.text,
      required this.gestureDetector,
      required this.securetext})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 15,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(255, 139, 126, 0.1),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).splashColor,
              offset: const Offset(0, 3),
            ),
          ],
          border: Border.all(color: Colors.yellow.shade100, width: 2.0),
          borderRadius: BorderRadius.circular(20),
        ),
         child: Center(
          child: TextField(
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              hintText: text,
              suffixIcon: gestureDetector,
              hintStyle: GoogleFonts.crimsonPro(
                fontSize: 12,
                color: Colors.blue.shade400,
              ),
            ),
            controller: nameController,
            obscureText: securetext,
          ),
        ),
      ),
    );
  }
}

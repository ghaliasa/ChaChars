// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Glass extends StatelessWidget {
  final double width, height;
  final Widget child;
  const Glass(
      {Key? key,
      required this.width,
      required this.height,
      required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.white.withOpacity(0.5), Colors.blue.shade100],
              stops: const [0.0, 1.0],
            ),
          ),
          child: child,
        ),
      ]),
    );
  }
}

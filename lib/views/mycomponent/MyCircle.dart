// ignore_for_file: file_names, must_be_immutable

import 'package:flutter/material.dart';

class MyCircle extends StatefulWidget {
  bool boolvalue;
  MyCircle({Key? key, required this.boolvalue}) : super(key: key);

  @override
  State<MyCircle> createState() => _MyCircleState();
}

class _MyCircleState extends State<MyCircle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 14,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.boolvalue == true
              ? Theme.of(context).appBarTheme.backgroundColor!.withOpacity(0.99)
              : Colors.grey),
    );
  }
}

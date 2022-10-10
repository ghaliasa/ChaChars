// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimatedImage extends StatefulWidget {
  String image;
  AnimatedImage({Key? key, required this.image}) : super(key: key);

  @override
  State<AnimatedImage> createState() => _AnimatedImageState();
}

class _AnimatedImageState extends State<AnimatedImage>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 1),
  )..repeat(reverse: true);
  late Animation<Offset> animation = Tween(
    begin: Offset.zero,
    end: const Offset(0, 0.08),
  ).animate(controller);

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: animation,
      child: Image.asset(widget.image),
    );
  }
}

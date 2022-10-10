// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'Bottom.dart';

class SplashToBottom extends StatefulWidget {
  const SplashToBottom({Key? key}) : super(key: key);

  @override
  _SplashToBottomState createState() => _SplashToBottomState();
}

class _SplashToBottomState extends State<SplashToBottom>
    with TickerProviderStateMixin {
  late AnimationController controller;
  bool animated = false;
  bool animateText = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    controller.addListener(() {
      if (controller.value > 0.97) {
        controller.stop();
        animated = true;
        setState(() {});
        Future.delayed(const Duration(seconds: 1), () {
          setState(() {
            animateText = true;
          });
        });
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: const Color.fromRGBO(255, 139, 126, 0.9),
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            height: animated ? screenHeight / 1.5 : screenHeight,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.yellow.shade100,
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
              color: Colors.yellow.shade100,
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(animated ? 40.0 : 0.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Visibility(
                  visible: !animated,
                  child: Lottie.asset(
                    'assets/lf20_ra2ivwvf.json',
                    controller: controller,
                    onLoaded: (composition) {
                      controller
                        ..duration = composition.duration
                        ..forward();
                    },
                  ),
                ),
                Visibility(
                  visible: animated,
                  child: Lottie.asset(
                    'assets/lf20_ra2ivwvf.json',
                    controller: controller,
                    onLoaded: (composition) {
                      controller
                        ..duration = composition.duration
                        ..forward();
                    },
                  ),
                ),
                Center(
                  child: AnimatedOpacity(
                    opacity: animateText ? 1 : 0,
                    duration: const Duration(seconds: 1),
                    child: Text(
                      'ChaChars',
                      style: GoogleFonts.crimsonPro(
                        textStyle: Theme.of(context).textTheme.headline4,
                        fontSize: 30,
                        color: const Color.fromRGBO(59, 39, 250, 0.9),
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Text bottom part
          Visibility(visible: animated, child: const Bottom()),
        ],
      ),
    );
  }
}

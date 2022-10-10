// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
import 'package:lottie/lottie.dart';

import '../Home.dart';
//import '../Views/signup.dart';
// import '../Views/signup.dart';
// import '../views/home.dart';
//import '../views/signin.dart';
//import '../views/signup.dart';

class SplashToHome extends StatefulWidget {
  const SplashToHome({Key? key}) : super(key: key);

  @override
  _SplashToHomeState createState() => _SplashToHomeState();
}

class _SplashToHomeState extends State<SplashToHome>
    with TickerProviderStateMixin {
  late AnimationController controller;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    controller.addListener(() {
      if (controller.value > 0.95) {
        controller.stop();
        Get.offAll(const Home());
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
    return Scaffold(
      key: _scaffoldKey,
      //backgroundColor: Colors.yellow.shade100,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 6,
          ),
          Lottie.asset(
            //'assets/ezgif-4-79ea579926.mp4.lottie.json',
            'assets/lf20_ra2ivwvf.json',
            //'assets/lf20_fid0xxcp.json',
            controller: controller,
            onLoaded: (composition) {
              controller
                ..duration = composition.duration
                ..forward();
            },
          ),
        ],
      ),
    );
  }
}

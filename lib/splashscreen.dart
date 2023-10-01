import 'package:candycrush/candycrush.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:lottie/lottie.dart';

//import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => candyCrush()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.center, // Aligns children at the center
        children: [
          Lottie.asset(
            "assets/animations/CandyAnimation.json",
          ),
          //SizedBox(height: -2), // Add some spacing between the animations
          Lottie.asset("assets/animations/loader.json"),
        ],
      ),
    );
  }
}

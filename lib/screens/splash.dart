import 'dart:async';

import 'package:flutter/material.dart';
import 'package:guied_me/screens/onBoarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),() => Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => OnBoardingScreen())));
    // get
    // getScreen();
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          child: Image.asset('assets/images/logo.png',fit: BoxFit.cover,
            width: double.infinity,
            height: 500,
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:linuxgeek/screens/home.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 2),
            () => {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const Linux())),
        });
  }
  @override
  Widget build(BuildContext context) {
    @override  var orientation = MediaQuery.of(context).orientation;
    return SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xffe6f2ff),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                orientation == Orientation.portrait
                    ? Image.asset(
                  'assets/splashscreen/splashscreen.png',
                  height: 300.0,
                  width: 300.0,
                )
                    : Image.asset(
                  'assets/splashscreen/splashscreen.png',
                  height: 300.0,
                  width: 300.0,
                ),
              ],
            ),
          ),
        ));
  }
}

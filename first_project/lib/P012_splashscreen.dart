import 'dart:async';

import 'package:first_project/P013_screen2.dart';
import 'package:flutter/material.dart';
import 'P014_bottomnavigation.dart';
import 'P015_navigation_drawer.dart';
import 'P016_tabbar.dart';
import 'P017_Form.dart';
import 'P018_animatedcontainer.dart';
import 'P019_animatedpositioned.dart';

class SplashScreeen extends StatefulWidget {
  const SplashScreeen({super.key});

  @override
  State<SplashScreeen> createState() => _SplashScreeenState();
}

class _SplashScreeenState extends State<SplashScreeen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MyContainer()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'SplashScreen',
            style: TextStyle(fontSize: 40, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: unused_import

import 'package:financeapp/pages/home_Page.dart';
import 'package:flutter/material.dart';

import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: AnimatedSplashScreen(
      splash: 'lib/icons/budget.png',
      splashIconSize: 250,
      nextScreen: Home(),
      animationDuration: Duration(seconds: 2),
      splashTransition: SplashTransition.fadeTransition,
      curve: Curves.easeInCirc,
    ));
  }
}

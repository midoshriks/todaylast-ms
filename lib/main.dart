// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:today_ms/models/task_data.dart';

import 'screens/tasks_screen.dart';

import 'package:provider/provider.dart';

import 'package:page_transition/page_transition.dart';
void main() {
  runApp(const MyApp());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('assets/images/89023-loading-circles.json'),      
      // Column(
      //   children: [
      //     Image.asset('assets/images/splch.png'),
      //     const Text('To Day List', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),)
      //   ],
      // ), 
      backgroundColor: Colors.teal,
      nextScreen:  TaskScreen(),
      splashIconSize: 250,
      duration: 5000,
      splashTransition: SplashTransition.fadeTransition,
      // splashTransition: SplashTransition.sizeTransition,
      pageTransitionType: PageTransitionType.leftToRightWithFade,
      animationDuration: const Duration(seconds: 1),
      );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        // home: TaskScreen(),
      ),
    );
  }
}


import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kids_learning/Home%20Screen/home_screen.dart';
import 'package:kids_learning/TabbarScreen/tab_bar_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
    Navigator.pushAndRemoveUntil(
     context,
      MaterialPageRoute(
      builder: (context) => const TabBarScreen(),
    ),(route) => false,
   );
});
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height  : MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
            Colors.blue.shade200,
            Colors.white,
            Colors.blue.shade200
          ])
        ),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.transparent
                ),
                child: Image.asset("assets/images/homeIcon/splashImage.png",width: 250)),
              const SizedBox(height: 15),
              Text("Kid's Learning...",
              style:  CustomTextStyle.bold.copyWith(letterSpacing: 1.5,
                fontSize: 32,
                color: AppColors.black
              )),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
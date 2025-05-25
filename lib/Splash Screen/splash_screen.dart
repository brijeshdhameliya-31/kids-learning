import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kids_learning/FormScreen/form_screen.dart';
import 'package:kids_learning/TabbarScreen/tab_bar_screen.dart';
import 'package:kids_learning/pageview/pageview_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    screenManage();
  }

  void screenManage() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    bool isSkip = preferences.getBool('skipData') ?? false;
    bool isForm = preferences.getBool('formData') ?? false;
    print("Skip : $isSkip");
    if (isSkip == false) {
      Timer(const Duration(seconds: 5), () {
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const PageViewScreen(),
          ),
          (route) => false,
        );
      });
    } else {
      if (isForm == false) {
        Timer(const Duration(seconds: 5), () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const FormScreen(),
            ),
            (route) => false,
          );
        });
      } else {
        Timer(const Duration(seconds: 5), () {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => const TabBarScreen(),
            ),
            (route) => false,
          );
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.blue.shade200,
              Colors.white,
              Colors.blue.shade200
            ])),
        child: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  width: 320,
                  height: 320,
                  decoration: const BoxDecoration(color: Colors.transparent),
                  child: Image.asset("assets/app_splash.png", width: 320)),
              const SizedBox(height: 15),
              // Text("Kid's Learning...",
              //     style: CustomTextStyle.bold.copyWith(
              //         letterSpacing: 1.5,
              //         fontSize: 32,
              //         color: AppColors.black)),
              // const SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}

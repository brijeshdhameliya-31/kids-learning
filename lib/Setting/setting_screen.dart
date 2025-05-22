import 'dart:io';

import 'package:flutter/material.dart';
import 'package:kids_learning/Profile%20Screen/profile_screen.dart';
import 'package:kids_learning/pageview/pageview_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  logoutAction() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("skipData");
    preferences.remove("formData");
    preferences.remove("userName");
    preferences.remove("profileImage");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const PageViewScreen()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue.withOpacity(0.99),
      body: Stack(
        children: [
          SafeArea(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                      // color: Colors.white,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.blue.shade200,
                        Colors.white,
                        Colors.blue.shade200
                      ])),
                ),
                Container(
                  height: 70,
                  decoration: const BoxDecoration(
                      color: Colors.white12,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(40),
                          bottomLeft: Radius.circular(40))),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.4,
                    decoration: const BoxDecoration(
                        color: AppColors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Column(
                      children: [
                        const SizedBox(height: 20),
                        Text(
                          "Settings",
                          style: CustomTextStyle.semibold
                              .copyWith(fontSize: 25, color: AppColors.black),
                        ),
                        const SizedBox(height: 20),
                        profile(),
                        const SizedBox(height: 20),
                        logout(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                "assets/images/homeIcon/setting_up.png",
                width: 300,
              )),
        ],
      ),
    );
  }

  showAlert() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Kids Learning",
                textAlign: TextAlign.center,
                style: CustomTextStyle.semibold
                    .copyWith(color: AppColors.black, fontSize: 16),
              ),
              content: Text(
                "Are you sure you want to logout?",
                textAlign: TextAlign.center,
                style: CustomTextStyle.medium
                    .copyWith(fontSize: 14, color: AppColors.black),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buttons("No", Colors.red, () => Navigator.pop(context)),
                    const SizedBox(width: 12),
                    buttons("Yes", Colors.green, () => logoutAction())
                  ],
                )
              ],
            ));
  }

  Widget buttons(String title, Color color, Function() onTap) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 45,
        width: 70,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(title,
              style: CustomTextStyle.medium
                  .copyWith(color: AppColors.white, fontSize: 15)),
        ),
      ),
    );
  }

  Widget logout() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          showAlert();
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue.shade50,
              boxShadow: const [
                BoxShadow(
                    color: AppColors.skyBlue,
                    blurRadius: 15,
                    offset: Offset(0, 5))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset("assets/images/homeIcon/logout.png", width: 50),
                const SizedBox(width: 10),
                Text(
                  "Logout",
                  style: CustomTextStyle.semibold
                      .copyWith(color: AppColors.textTitleColor, fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget profile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ProfileScreen()));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue.shade50,
              boxShadow: const [
                BoxShadow(
                    color: AppColors.skyBlue,
                    blurRadius: 15,
                    offset: Offset(0, 5))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                Image.asset("assets/images/homeIcon/person.png", width: 50),
                const SizedBox(width: 10),
                Text(
                  "Profile",
                  style: CustomTextStyle.semibold
                      .copyWith(color: AppColors.textTitleColor, fontSize: 17),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

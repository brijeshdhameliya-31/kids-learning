import 'dart:io';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/Home%20Screen/home_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/listenandGuess.dart';
import 'package:kids_learning/Setting/setting_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class TabBarScreen extends StatefulWidget {
  const TabBarScreen({super.key});

  @override
  State<TabBarScreen> createState() => _TabBarScreenState();
}

class _TabBarScreenState extends State<TabBarScreen> {
  int _selectedIndex = 0;
  final pages = [
    const HomeScreen(),
    const ListenAndGuessScreen(),
    const SettingScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: pages[_selectedIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          color: Colors.blue.shade200,
          buttonBackgroundColor: Colors.blue.shade400,
          height: 60,
          items:  <Widget>[
            Center(child: Image.asset(Images.HomeIcn,width: 30)),
            Center(child: Image.asset(Images.ListenIcn,width: 30)),
            Center(child: Image.asset(Images.SettingsIcn,width: 30)),
          ],
          animationDuration: const Duration(milliseconds: 300),
          animationCurve: Curves.easeInOut,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        )
        // Container(
        //   height: Platform.isAndroid
        //       ? 64
        //       : safePadding == 0
        //           ? 64
        //           : 88,
        //   decoration:  BoxDecoration(
        //     gradient:
        //         LinearGradient(colors: [AppColors.skyBlue.withOpacity(0.4), AppColors.skyBlue.withOpacity(0.4)]),
        //     // color: AppColor.white, //Theme.of(context).primaryColor,
        //     borderRadius: const BorderRadius.only(
        //       topLeft: Radius.circular(20),
        //       topRight: Radius.circular(20)
        //     ),
        //     border: Border.all(width: 0.5,color: AppColors.skyBlue),
        //     boxShadow: const <BoxShadow>[
        //       BoxShadow(
        //         color: AppColors.border,
        //         blurRadius: 10,
        //         spreadRadius: 5,
        //       ),
        //     ],
        //   ),
        //   child: Center(
        //     child: Row(
        //       children: [
        //         tabbarItem(0, 'Learning', Images.HomeIcn),
        //         tabbarItem(1, 'Listen & Guess', Images.ListenIcn),
        //       tabbarItem(2, 'Setting', Images.SettingsIcn),
        //       ],
        //     ),
        //   ),
        // ),
        );
  }

  Widget tabbarItem(int index, String title, String image) {
    bool isSelected = _selectedIndex == index;
    Color? bgcolor = isSelected ? AppColors.white : Colors.transparent;
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              transform: GradientRotation(0.2),
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppColors.skyBlue, AppColors.skyBlue]),
          color: bgcolor,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),

        //color: isSelected ? AppColor.red : Colors.transparent,
        child: InkWell(
          //enableFeedback: false,
          onTap: () {
            _onItemTapped(index);
          },
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  image.isEmpty
                      ? Container(height: 17)
                      : Stack(
                          children: [
                            Center(
                              child: Image.asset(
                                image,
                                height: 30))
                          ],
                        ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Text(
                      title,
                      style: CustomTextStyle.regular
                          .copyWith(color: AppColors.black, fontSize: 14),
                      maxLines: 1,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    /*
    if (index == 2) {
      Route route =
          MaterialPageRoute(builder: (context) => const CreateReminderScreen());
      Navigator.push(context, route).then((onGoBackCreateReminder));
    } else {
      setState(() {
        _selectedIndex = index;
      });
    }
    */
  }
}

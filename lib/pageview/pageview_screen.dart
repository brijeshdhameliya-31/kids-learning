import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kids_learning/FormScreen/form_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController();
  int currentPage = 0;
  Timer? timer;

  void startAutoScroll() {
    timer = Timer.periodic(Duration(seconds: 2), (timer) {
      if (currentPage < pages.length - 1) {
        currentPage++;
        pageController.animateToPage(
          currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      } else {
        timer.cancel(); // stop when reaching last page
      }
    });
  }

  skipAction(bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('skipData', value);
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => FormScreen()));
  }

  List<PageModel> pages = [
    PageModel(
        image: "assets/images/pageview/preview1.png",
        title: "Learning With Fun",
        subTitle: "Learning With Fun"),
    PageModel(
        image: "assets/images/pageview/preview2.png",
        title: "Let's Learn and Play",
        subTitle:
            "Educational apps often use game-based learning, making complex concepts more accessible and fun to learn."),
    PageModel(
        image: "assets/images/pageview/preview3.png",
        title: "Let's Learn Something and do Something",
        subTitle:
            "Many apps adapt to the individual learning pace and style of each child, providing tailored instruction and support. "),
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    // startAutoScroll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue.withOpacity(0.99),
        body: SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  Colors.blue.shade200,
                  Colors.white,
                  Colors.blue.shade200
                ])),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    itemCount: pages.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              currentPage == pages.length - 3
                                  ? Column(
                                      children: [
                                        Text(
                                          "Welcome to",
                                          style: CustomTextStyle.semibold
                                              .copyWith(
                                                  letterSpacing: 1.5,
                                                  fontSize: 25,
                                                  color: AppColors.black),
                                        ),
                                        Text("Kid's Learning...",
                                            style: CustomTextStyle.bold
                                                .copyWith(
                                                    letterSpacing: 1.5,
                                                    fontSize: 32,
                                                    color: AppColors.black)),
                                      ],
                                    )
                                  : Text(
                                      pages[index].title,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyle.bold.copyWith(
                                          letterSpacing: 0.5,
                                          fontSize: 20,
                                          color: AppColors.black),
                                    ),
                              SizedBox(height: 10),
                              Image.asset(pages[index].image, width: 250),
                              SizedBox(height: 10),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  currentPage == pages.length - 3
                                      ? pages[index].title
                                      : pages[index].subTitle,
                                  textAlign: TextAlign.center,
                                  style: CustomTextStyle.semibold.copyWith(
                                      letterSpacing:
                                          currentPage == pages.length - 3
                                              ? 1.5
                                              : 0.5,
                                      fontSize: 18,
                                      color: AppColors.black),
                                ),
                              ),
                              SizedBox(height: 15),
                            ]),
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: List.generate(pages.length, (index) {
                    return AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      height: 8,
                      width: currentPage == index ? 8 : 8,
                      decoration: BoxDecoration(
                        color: currentPage == index
                            ? AppColors.textTitleColor
                            // ignore: deprecated_member_use
                            : AppColors.textTitleColor.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  }),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          currentPage == pages.length - 1
              ? Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15,bottom: 15),
                    child: InkWell(
                      onTap: () {
                        skipAction(true);
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppColors.skyBlue,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              color: AppColors.textTitleColor, width: 0.8),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 4),
                          child: Text("Skip",
                              style: CustomTextStyle.regular.copyWith(
                                  fontSize: 18,
                                  color: AppColors.textTitleColor)),
                        ),
                      ),
                    ),
                  ),
                )
              : SizedBox(),
        ],
      ),
    ));
  }
}

class PageModel {
  String image;
  String title;
  String subTitle;

  PageModel({required this.image, required this.title, required this.subTitle});
}

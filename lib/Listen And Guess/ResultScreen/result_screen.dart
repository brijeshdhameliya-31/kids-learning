import 'package:flutter/material.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class ResultScreen extends StatefulWidget {
    final int score;

   ResultScreen(this.score,{super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                AppColors.headerText,
                AppColors.white,
                AppColors.white
              ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(Images.background)),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(Images.congratulation,width: 200),
                  const SizedBox(height: 20),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70,
                    decoration: BoxDecoration(
                      color: AppColors.skyBlue,
                      borderRadius: BorderRadius.circular(25)
                    ),
                    child: Center(
                      child: Text("Your Score is : ${widget.score}",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.bold.copyWith(
                        fontSize: 25,color: AppColors.black),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}
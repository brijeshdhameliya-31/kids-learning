import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class ResultScreen extends StatefulWidget {
  final int score;

  ResultScreen(this.score, {super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  late ConfettiController _controllerCenter;

  @override
  void initState() {
    _controllerCenter =
        ConfettiController(duration: const Duration(seconds: 10));
    _controllerCenter.play();
    super.initState();
  }

  @override
  void dispose() {
    _controllerCenter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue.withOpacity(0.99),
        body: Stack(
      children: [
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
              AppColors.headerText,
              AppColors.white,
              AppColors.headerText
            ]))),
        // Align(
        //     alignment: Alignment.bottomCenter,
        //     child: Image.asset(Images.background)),
        Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: _controllerCenter,
            blastDirectionality: BlastDirectionality.explosive,
            particleDrag: 0.05,
            emissionFrequency: 0.05,
            numberOfParticles: 50,
            gravity: 0.05,
            shouldLoop: true,
            colors: const [
              Colors.green,
              Colors.blue,
              Colors.pink,
              Colors.orange,
              Colors.purple
            ], // manually specify the colors to be used
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Images.congratulation, width: 200),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  decoration: BoxDecoration(
                      color: AppColors.skyBlue.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(25)),
                  child: Center(
                    child: Text(
                      "Your Score is : ${widget.score}",
                      textAlign: TextAlign.center,
                      style: CustomTextStyle.semibold
                          .copyWith(fontSize: 25, color: AppColors.black),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.skyBlue.withOpacity(0.6),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 0.8, color: AppColors.textTitleColor)),
                    child: Padding(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                      child: Text(
                        "Continue",
                        style: CustomTextStyle.medium.copyWith(
                            fontSize: 16, color: AppColors.textTitleColor),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}

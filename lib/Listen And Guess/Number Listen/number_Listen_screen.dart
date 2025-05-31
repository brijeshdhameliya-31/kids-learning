import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_learning/Ads/InterstitialAdManager.dart';
import 'package:kids_learning/Ads/bannerAdsManager.dart';
import 'package:kids_learning/Listen%20And%20Guess/Number%20Listen/numberVM.dart';
import 'package:kids_learning/Listen%20And%20Guess/ResultScreen/result_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class NumberListenScreen extends StatefulWidget {
  const NumberListenScreen({super.key});

  @override
  State<NumberListenScreen> createState() => _NumberListenScreenState();
}

class _NumberListenScreenState extends State<NumberListenScreen> {
  final FlutterTts flutterTts = FlutterTts();
  NumberListenVM viewModel = NumberListenVM();
  late PageController _controller;
  late List<NumberListenModel> shuffledList;
  late List<bool> isPressedList;
  bool isPressed = false;
  Color istrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Colors.blue;
  int? newIndex;
  int score = 0;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    shuffledList = List<NumberListenModel>.from(viewModel.newList)..shuffle();
    isPressedList = List.generate(shuffledList.length, (index) => false);
    flutterTts.speak(shuffledList[newIndex ?? 0].numberName!);
    super.initState();
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
                AppColors.white
              ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(Images.background)),
          Column(
            children: [
              const SizedBox(height: 25),
              SafeArea(
                child: Text("Numbers",
                    style: CustomTextStyle.bold
                        .copyWith(fontSize: 25, color: Colors.indigo.shade700)),
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                      child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (page) {
                      isPressed = false;
                    },
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: shuffledList.length,
                    itemBuilder: (context, index) {
                      final question = shuffledList[index];
                      final isPressed = isPressedList[index];
                      newIndex = index;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30.0),
                          GestureDetector(
                              onTap: () =>
                                  flutterTts.speak(question.numberName!),
                              child: Image.asset(Images.volume, width: 70)),
                          const SizedBox(height: 30.0),
                          GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              // childAspectRatio: 0,
                              mainAxisSpacing: 30,
                              crossAxisSpacing: 30,
                              physics: const NeverScrollableScrollPhysics(),
                              primary: false,
                              children: [
                                for (int i = 0;
                                    i < question.answer!.length;
                                    i++)
                                  GestureDetector(
                                    onTap: isPressed
                                        ? () {}
                                        : () {
                                            if (question.answer!.entries
                                                .toList()[i]
                                                .value) {
                                              setState(() {
                                                isPressedList[index] = true;
                                              });
                                              score += 1;
                                              print(score);
                                              flutterTts.speak("Correct");
                                            } else {
                                              setState(() {
                                                isPressedList[index] = true;
                                              });
                                              flutterTts.speak("InCorrect");
                                            }
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 5,
                                              color: isPressed
                                                  ? question.answer!.entries
                                                          .toList()[i]
                                                          .value
                                                      ? Colors.green
                                                      : Colors.red
                                                  : Colors.transparent),
                                          color:
                                              // isPressed
                                              //     ? viewModel.newList[index].answer!
                                              //             .entries
                                              //             .toList()[i]
                                              //             .value
                                              //         ? Colors.green.shade200
                                              //         : Colors.red.shade200
                                              //     :
                                              Colors.grey.shade100),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Image.asset(
                                          question.answer!.keys.toList()[i],
                                          // height: 1,
                                          // width: 1,
                                          fit: BoxFit.fill,
                                          width: 50,
                                        ),
                                      ),
                                    ),
                                  )
                              ]),
                          const SizedBox(height: 30.0),
                          GestureDetector(
                              onTap: isPressed
                                  ? index + 1 == shuffledList.length
                                      ? () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultScreen(score)));
                                        }
                                      : () {
                                          final nextIndex = index + 1;
                                          if (nextIndex % 5 == 0) {
                                            InterstitialAdManager.shared
                                                .showAdAndThen(() {
                                              _controller.nextPage(
                                                duration: const Duration(
                                                    milliseconds: 300),
                                                curve: Curves.linear,
                                              );
                                              flutterTts.speak(
                                                  shuffledList[index + 1]
                                                      .numberName!);
                                            });
                                          } else {
                                            _controller.nextPage(
                                              duration: const Duration(
                                                  milliseconds: 300),
                                              curve: Curves.linear,
                                            );
                                            flutterTts.speak(
                                                shuffledList[index + 1]
                                                    .numberName!);
                                          }
                                          /* _controller.nextPage(
                                               duration: const Duration(
                                                  microseconds: 500),
                                              curve: Curves.linear);
                                          flutterTts.speak(
                                              shuffledList[index + 1]
                                                  .numberName!); */
                                        }
                                  : null,
                              child: Image.asset(Images.rightArrow, width: 70)),
                        ],
                      );
                    },
                  )),
                ],
              ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Image.asset(Images.backArrow, width: 45)),
              ),
            ),
          ),
          Align(alignment: Alignment.bottomCenter, child: BannerAdWidget()),
        ],
      ),
    );
  }
}

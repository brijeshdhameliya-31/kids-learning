
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_learning/Listen%20And%20Guess/Color%20Listen/colorsVM.dart';
import 'package:kids_learning/Listen%20And%20Guess/ResultScreen/result_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class ColorListenScreen extends StatefulWidget {
  const ColorListenScreen({super.key});

  @override
  State<ColorListenScreen> createState() => _ColorListenScreenState();
}

class _ColorListenScreenState extends State<ColorListenScreen> {
   final FlutterTts flutterTts = FlutterTts();
  ColorsListenVM viewModel = ColorsListenVM();

  bool isPressed = false;
  Color istrue = Colors.green;
  Color isWrong = Colors.red;
  Color btnColor = Colors.blue;
  int? newIndex;
  int score = 0;

  @override
  void initState() {
    flutterTts.speak(viewModel.newList[newIndex ?? 0].colorName!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   PageController _controller = PageController(initialPage: 0);
    return Scaffold(
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
                child: Text("Colors",
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
                    itemCount: viewModel.newList.length,
                    itemBuilder: (context, index) {
                      newIndex = index;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30.0),
                          GestureDetector(
                              onTap: () => flutterTts
                                  .speak(viewModel.newList[index].colorName!),
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
                                    i < viewModel.newList[index].answer!.length;
                                    i++)
                                  GestureDetector(
                                    onTap: isPressed
                                        ? () {}
                                        : () {
                                            if (viewModel
                                                .newList[index].answer!.entries
                                                .toList()[i]
                                                .value) {
                                              setState(() {
                                                isPressed = true;
                                              });
                                              score += 1;
                                              print(score);
                                              Fluttertoast.showToast(
                                                  msg: "Your answer is Correct",
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  gravity:
                                                      ToastGravity.BOTTOM_RIGHT,
                                                  fontSize: 16.0);
                                              flutterTts.speak("Correct");
                                            } else {
                                              setState(() {
                                                isPressed = true;
                                              });
                                              Fluttertoast.showToast(
                                                  msg:
                                                      "Your answer is Incorrect",
                                                  toastLength:
                                                      Toast.LENGTH_SHORT,
                                                  gravity:
                                                      ToastGravity.BOTTOM_RIGHT,
                                                  fontSize: 16.0);
                                              flutterTts.speak("InCorrect");
                                            }
                                          },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              width: 5,
                                              color: isPressed
                                                  ? viewModel.newList[index]
                                                          .answer!.entries
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
                                          viewModel.newList[index].answer!.keys
                                              .toList()[i],
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
                                  ? index + 1 == viewModel.newList.length
                                      ? () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      ResultScreen(score)));
                                        }
                                      : () {
                                          _controller.nextPage(
                                              duration: const Duration(
                                                  microseconds: 500),
                                              curve: Curves.linear);
                                          flutterTts.speak(viewModel
                                              .newList[index + 1].colorName!);
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
          )
        ],
      ),
    );
  }
}
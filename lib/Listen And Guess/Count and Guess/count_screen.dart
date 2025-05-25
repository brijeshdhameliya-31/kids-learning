import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_learning/Listen%20And%20Guess/Count%20and%20Guess/count_vm.dart';
import 'package:kids_learning/Listen%20And%20Guess/ResultScreen/result_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class CountScreen extends StatefulWidget {
  const CountScreen({super.key});

  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  CountVM viewModel = CountVM();
  final FlutterTts flutterTts = FlutterTts();
  int score = 0;
  bool isPressed = false;
  late List<CountModel> shuffledList;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    shuffledList = List<CountModel>.from(viewModel.countlist)..shuffle();
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
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(Images.background),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 25),
                SafeArea(
                  child: Text(
                    "Count and Guess",
                    style: CustomTextStyle.bold.copyWith(
                      fontSize: 25,
                      color: Colors.indigo.shade700,
                    ),
                  ),
                ),
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
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 30.0),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Wrap(
                              spacing: 10,
                              alignment: WrapAlignment.center,
                              children: question.images!
                                  .map(
                                    (imagePath) => Wrap(children: [
                                      Image.asset(
                                        imagePath,
                                        width: 50,
                                        height: 50,
                                      ),
                                    ]),
                                  )
                                  .toList(),
                            ),
                          ),
                          const SizedBox(height: 30.0),
                          GridView.count(
                            crossAxisCount: 2,
                            shrinkWrap: true,
                            padding: const EdgeInsets.symmetric(horizontal: 50),
                            mainAxisSpacing: 30,
                            crossAxisSpacing: 30,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              for (int i = 0;
                                  i < shuffledList[index].answer!.length;
                                  i++)
                                GestureDetector(
                                  onTap: isPressed
                                      ? () {}
                                      : () {
                                          if (shuffledList[index]
                                              .answer!
                                              .entries
                                              .toList()[i]
                                              .value) {
                                            setState(() {
                                              isPressed = true;
                                            });
                                            score += 1;
                                            print(score);
                                            Fluttertoast.showToast(
                                                msg: "Your answer is Correct",
                                                toastLength: Toast.LENGTH_SHORT,
                                                gravity:
                                                    ToastGravity.BOTTOM_RIGHT,
                                                fontSize: 16.0);
                                            flutterTts.speak("Correct");
                                          } else {
                                            setState(() {
                                              isPressed = true;
                                            });
                                            Fluttertoast.showToast(
                                                msg: "Your answer is Incorrect",
                                                toastLength: Toast.LENGTH_SHORT,
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
                                                ? shuffledList[index]
                                                        .answer!
                                                        .entries
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
                                        shuffledList[index]
                                            .answer!
                                            .keys
                                            .toList()[i],
                                        // height: 1,
                                        // width: 1,
                                        fit: BoxFit.fill,
                                        width: 50,
                                      ),
                                    ),
                                  ),
                                )
                            ],
                          ),
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
                                          setState(() {
                                            isPressed = false;
                                          });
                                          _controller.nextPage(
                                              duration: const Duration(
                                                  microseconds: 500),
                                              curve: Curves.linear);
                                          // flutterTts.speak(viewModel
                                          //     .newList[index + 1].numberName!);
                                        }
                                  : null,
                              child: Image.asset(Images.rightArrow, width: 70)),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
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
                  icon: Image.asset(Images.backArrow, width: 45),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learning/Ads/InterstitialAdManager.dart';
import 'package:kids_learning/Ads/bannerAdsManager.dart';
import 'package:kids_learning/Listen%20And%20Guess/Missing%20Fill%20Up/missing_vm.dart';
import 'package:kids_learning/Listen%20And%20Guess/ResultScreen/result_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class MissingScreen extends StatefulWidget {
  const MissingScreen({super.key});

  @override
  State<MissingScreen> createState() => _MissingScreenState();
}

class _MissingScreenState extends State<MissingScreen> {
  final FlutterTts flutterTts = FlutterTts();
  MissingVM viewModel = MissingVM();
  int currentIndex = 0;
  int score = 0;
  bool isAnswered = false;
  late List<SequenceQuestion> shuffledList;
  int? selectedAnswer;

  @override
  void initState() {
    super.initState();
    shuffledList = List<SequenceQuestion>.from(viewModel.sequenceQuestions)
      ..shuffle();
  }

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0);
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
              children: [
                const SizedBox(height: 25),
                SafeArea(
                  child: Text(
                    "Fill in the blank",
                    style: CustomTextStyle.bold.copyWith(
                      fontSize: 25,
                      color: Colors.indigo.shade700,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Flexible(
                  child: PageView.builder(
                      controller: _controller,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: shuffledList.length,
                      itemBuilder: (context, index) {
                        final question =
                            shuffledList[currentIndex];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              _formatSequence(question),
                              style: const TextStyle(
                                  fontSize: 36, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 40),
                            GridView.count(
                              crossAxisCount: 2,
                              shrinkWrap: true,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 50),
                              mainAxisSpacing: 20,
                              crossAxisSpacing: 20,
                              children: question.options.map((option) {
                                final isCorrect =
                                    option == question.correctAnswer;
                                final isSelected = selectedAnswer == option;

                                return GestureDetector(
                                  onTap: isAnswered
                                      ? null
                                      : () async {
                                          setState(() {
                                            selectedAnswer = option;
                                            isAnswered = true;
                                          });

                                          if (isCorrect) {
                                            score++;
                                            await flutterTts.speak("Correct");
                                          } else {
                                            await flutterTts.speak("Incorrect");
                                          }
                                        },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: isAnswered
                                          ? isCorrect
                                              ? Colors.green.shade200
                                              : isSelected
                                                  ? Colors.red.shade200
                                                  : Colors.grey.shade200
                                          : Colors.grey.shade100,
                                      border: Border.all(
                                          width: 5,
                                          color: isAnswered
                                              ? isCorrect
                                                  ? Colors.green
                                                  : Colors.red
                                              : Colors.transparent),
                                    ),
                                    padding: const EdgeInsets.all(10),
                                    child: Center(
                                        child: Text(
                                      "${option}",
                                      style: TextStyle(fontSize: 25),
                                    )),
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(height: 30),
                            if (isAnswered)
                              GestureDetector(
                                onTap: () {
                                  if (!isAnswered)
                                    return; // Prevent skipping without answering

                                  void goToNextQuestion() {
                                    if (currentIndex + 1 <
                                        shuffledList.length) {
                                      setState(() {
                                        currentIndex++;
                                        isAnswered = false;
                                        selectedAnswer = null;
                                      });
                                    } else {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              ResultScreen(score),
                                        ),
                                      );
                                    }
                                  }

                                  // Show ad every 5th question (after 5, 10, 15...)
                                  if ((currentIndex + 1) % 5 == 0) {
                                    InterstitialAdManager.shared
                                        .showAdAndThen(goToNextQuestion);
                                  } else {
                                    goToNextQuestion();
                                  }
                                },
                                child:
                                    Image.asset(Images.rightArrow, width: 70),
                              ),
                          ],
                        );
                      }),
                )
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
          Align(alignment: Alignment.bottomCenter, child: BannerAdWidget()),
        ],
      ),
    );
  }

  String _formatSequence(SequenceQuestion question) {
    return question.sequence.map((num) {
      if (num == 0) {
        return isAnswered ? question.correctAnswer.toString() : "_?_";
      } else {
        return num.toString();
      }
    }).join(" , ");
  }
}

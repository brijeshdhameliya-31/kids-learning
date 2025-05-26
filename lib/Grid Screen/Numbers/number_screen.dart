import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learning/Ads/InterstitialAdManager.dart';
import 'package:kids_learning/Ads/bannerAdsManager.dart';
import 'package:kids_learning/Grid%20Screen/Numbers/numberVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class NumberScreen extends StatefulWidget {
  int selectedIndex;
  NumberScreen(this.selectedIndex, {super.key});

  @override
  State<NumberScreen> createState() => _NumberScreenState();
}

class _NumberScreenState extends State<NumberScreen> {
  final FlutterTts flutterTts = FlutterTts();
  int? addIndex;
  NumberVM viewModel = NumberVM();
  bool volume = true;

  @override
  void initState() {
    addIndex = widget.selectedIndex;
    flutterTts.speak(viewModel.numberList[widget.selectedIndex].numberName!);
    super.initState();
  }

  Future speak() async {
    // print(await flutterTts.getLanguages);
    // await flutterTts.setLanguage("en-IN");
    // await flutterTts.setPitch(1.0);
    // await flutterTts.setVolume(1.0);
    await flutterTts.setSpeechRate(0.2);
    // print(await flutterTts.getVoices);
    int count = widget.selectedIndex;
    await flutterTts.speak(viewModel.numberList[count].numberName!);
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    if (controller.hasClients) {
      controller.jumpToPage(widget.selectedIndex);
    }
    return ChangeNotifierProvider<NumberVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<NumberVM>(builder: (context, value, _) {
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
                    const SizedBox(height: 100),
                    // const SizedBox(height: 30),
                    Text(
                      "${viewModel.numberList[widget.selectedIndex].numberName}",
                      style: CustomTextStyle.bold.copyWith(
                          fontSize: 45, color: AppColors.textTitleColor),
                    ),
                    const SizedBox(height: 70),
                    SizedBox(
                      height: 180,
                      child: Image.asset(
                          viewModel.numberList[widget.selectedIndex].numberImage
                              .toString(),
                          width: 180),
                    ),
                    const SizedBox(height: 70),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                               if (widget.selectedIndex > 0 &&
                                        widget.selectedIndex <= 100) {
                                      setState(() {
                                        widget.selectedIndex--;
                                      });
                                      speak();
                                    }
                            },
                            child: Image.asset(Images.leftArrow, width: 70)),
                        InkWell(
                            onTap: () {
                              speak();
                            },
                            child: Image.asset(Images.volume, width: 70)),
                        GestureDetector(
                          onTap: () {
                            if (widget.selectedIndex >= 0 &&
                                      widget.selectedIndex < 100) {
                                    int nextIndex = widget.selectedIndex + 1;

                                    // Check if nextIndex is divisible by 5 (but not 0)
                                    if (nextIndex % 7 == 0 && nextIndex != 0) {
                                      InterstitialAdManager.shared
                                          .showAdAndNavigate(() {
                                        setState(() {
                                          widget.selectedIndex = nextIndex;
                                        });
                                        speak();
                                      });
                                    } else {
                                      setState(() {
                                        widget.selectedIndex = nextIndex;
                                      });
                                      speak();
                                    }
                                  }
                          },
                          child: Image.asset(Images.rightArrow, width: 70),
                        ),
                      ],
                    ),
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
                  viewModel.loading ? const LoaderView() : Container(),
                 Align(
                        alignment: Alignment.bottomCenter,
                        child: BannerAdWidget()),
              ],
            ),
          );
        }));
  }
}

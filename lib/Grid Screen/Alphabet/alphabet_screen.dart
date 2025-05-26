import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learning/Ads/InterstitialAdManager.dart';
import 'package:kids_learning/Ads/bannerAdsManager.dart';
import 'package:kids_learning/Grid%20Screen/Alphabet/alphabetVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class AlphabetScreen extends StatefulWidget {
  int selectedIndex;
  AlphabetScreen(this.selectedIndex, {super.key});

  @override
  State<AlphabetScreen> createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  final FlutterTts flutterTts = FlutterTts();
  int? addIndex;
  AlphabetVM viewModel = AlphabetVM();
  bool volume = true;

  @override
  void initState() {
    addIndex = widget.selectedIndex;
    flutterTts.speak(viewModel.alphabetList[widget.selectedIndex].alphabet!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future speak() async {
      await flutterTts.setSpeechRate(0.2);
      int count = widget.selectedIndex;
      volume == true
          ? await flutterTts.speak(viewModel.alphabetList[count].alphabet!)
          : await flutterTts
              .speak(viewModel.alphabetList[count].longPronounce!);
    }

    final controller = PageController();
    if (controller.hasClients) {
      controller.jumpToPage(widget.selectedIndex);
    }
    return Scaffold(
      body: ChangeNotifierProvider<AlphabetVM>(
          create: (BuildContext context) => viewModel,
          child: Consumer<AlphabetVM>(builder: (context, value, _) {
            return Stack(
              children: [
                SafeArea(
                  child: Stack(
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
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Image.asset(Images.backArrow,
                                        width: 45)),
                                switchUI(),
                              ],
                            ),
                          ),
                          Text(
                            "${viewModel.alphabetList[widget.selectedIndex].alphabetName}",
                            style: CustomTextStyle.bold.copyWith(
                                fontSize: 37, color: AppColors.textTitleColor),
                          ),
                          const SizedBox(height: 25),
                          SizedBox(
                            height: 120,
                            child: Image.asset(
                                viewModel
                                    .alphabetList[widget.selectedIndex].image1
                                    .toString(),
                                width: 120),
                          ),
                          const SizedBox(height: 30),
                          SizedBox(
                            height: 180,
                            child: Image.asset(
                                viewModel
                                    .alphabetList[widget.selectedIndex].image2
                                    .toString(),
                                width: 180),
                          ),
                          const SizedBox(height: 30),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    if (widget.selectedIndex > 0 &&
                                        widget.selectedIndex <= 25) {
                                      setState(() {
                                        widget.selectedIndex--;
                                      });
                                      speak();
                                    }
                                  },
                                  child:
                                      Image.asset(Images.leftArrow, width: 70)),
                              InkWell(
                                  onTap: () {
                                    speak();
                                  },
                                  child: Image.asset(Images.volume, width: 70)),
                              GestureDetector(
                                onTap: () {
                                  // if (widget.selectedIndex >= 0 &&
                                  //     widget.selectedIndex < 25) {
                                  //   print(widget.selectedIndex);
                                  //   setState(() {
                                  //     widget.selectedIndex++;
                                  //   });
                                  //   speak();
                                  // }
                                  if (widget.selectedIndex >= 0 &&
                                      widget.selectedIndex < 25) {
                                    int nextIndex = widget.selectedIndex + 1;

                                    // Check if nextIndex is divisible by 5 (but not 0)
                                    if (nextIndex % 5 == 0 && nextIndex != 0) {
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
                                child:
                                    Image.asset(Images.rightArrow, width: 70),
                              ),
                            ],
                          ),
                        ],
                      ),
                      value.loading ? const LoaderView() : Container(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BannerAdWidget()),
                    ],
                  ),
                ),
              ],
            );
          })),
    );
  }

  Widget switchUI() {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: FlutterSwitch(
        width: 80,
        // height: 40,
        showOnOff: true,
        value: volume,
        // activeIcon: const Text("Short",style: TextStyle(color: Colors.black),),
        activeText: "Short",
        // inactiveIcon: const Text("Long",style: TextStyle(color: Colors.white),),
        activeTextColor: Colors.black,
        inactiveTextColor: Colors.white,
        inactiveText: "Long",
        inactiveColor: Colors.indigo,
        activeColor: Colors.amber,
        activeTextFontWeight: FontWeight.bold,
        inactiveTextFontWeight: FontWeight.bold,
        onToggle: (val) {
          setState(() {
            volume = val;
          });
        },
      ),
    );
  }
}

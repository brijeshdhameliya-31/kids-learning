import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learning/Grid%20Screen/Seasons/seasonVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class SeasonsScreen extends StatefulWidget {
  int selectedIndex;
   SeasonsScreen(this.selectedIndex,{super.key});

  @override
  State<SeasonsScreen> createState() => _SeasonsScreenState();
}

class _SeasonsScreenState extends State<SeasonsScreen> {
  final FlutterTts flutterTts = FlutterTts();
  int? addIndex;
  SeasonVM viewModel = SeasonVM();
  bool volume = true;

  @override
  void initState() {
    addIndex = widget.selectedIndex;
    flutterTts.speak(viewModel.seasonList[widget.selectedIndex].seasonName!);
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
    await flutterTts.speak(viewModel.seasonList[count].seasonName!);
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    if (controller.hasClients) {
      controller.jumpToPage(widget.selectedIndex);
    }
    return ChangeNotifierProvider<SeasonVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<SeasonVM>(builder: (context, value, _) {
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
                      "${viewModel.seasonList[widget.selectedIndex].seasonName}",
                      style: CustomTextStyle.bold.copyWith(
                          fontSize: 45, color: AppColors.textTitleColor),
                    ),
                    const SizedBox(height: 70),
                    SizedBox(
                      height: 220,
                      child: Image.asset(
                          viewModel.seasonList[widget.selectedIndex].seasonImage
                              .toString(),
                          width: 220),
                    ),
                    const SizedBox(height: 50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                            onTap: () {
                              if (widget.selectedIndex > 0 &&
                                  widget.selectedIndex <= 2) {
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
                                widget.selectedIndex < 2) {
                              print(widget.selectedIndex);
                              setState(() {
                                widget.selectedIndex++;
                              });
                              speak();
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
                viewModel.loading ? const LoaderView() : Container()
              ],
            ),
          );
        }));
  }
}

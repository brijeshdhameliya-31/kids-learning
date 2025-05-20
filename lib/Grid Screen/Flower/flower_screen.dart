
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learning/Grid%20Screen/Flower/flowerVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class FlowerScreen extends StatefulWidget {
  int selectedIndex;
   FlowerScreen(this.selectedIndex,{super.key});

  @override
  State<FlowerScreen> createState() => _FlowerScreenState();
}

class _FlowerScreenState extends State<FlowerScreen> {
 final FlutterTts flutterTts = FlutterTts();
  int? addIndex;
  FlowerVM viewModel = FlowerVM();
  bool volume = true;

  @override
  void initState() {
    addIndex = widget.selectedIndex;
     flutterTts.speak(viewModel.flowerList[widget.selectedIndex].flowerName!);
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
    await flutterTts.speak(viewModel.flowerList[count].flowerName!);
  }

  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    if (controller.hasClients) {
      controller.jumpToPage(widget.selectedIndex);
    }
    return ChangeNotifierProvider<FlowerVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<FlowerVM>(builder: (context, value, _) {
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
                      "${viewModel.flowerList[widget.selectedIndex].flowerName}",
                      style: CustomTextStyle.bold.copyWith(
                          fontSize: 45, color: AppColors.textTitleColor),
                    ),
                    const SizedBox(height: 70),
                   SizedBox(
                      height: 220,
                      child: Image.asset(
                          viewModel.flowerList[widget.selectedIndex].flowerImage
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
                                  widget.selectedIndex <= 14) {
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
                                widget.selectedIndex < 14) {
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

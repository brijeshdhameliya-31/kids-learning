import 'package:flutter/material.dart';
import 'package:kids_learning/Grid%20Screen/Alphabet/alphabetModel.dart';
import 'package:kids_learning/Grid%20Screen/Alphabet/alphabetVM.dart';
import 'package:kids_learning/Grid%20Screen/Alphabet/alphabet_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';

class AlphabetListScreen extends StatefulWidget {
  const AlphabetListScreen({super.key});

  @override
  State<AlphabetListScreen> createState() => _AlphabetListScreenState();
}

class _AlphabetListScreenState extends State<AlphabetListScreen> {
  AlphabetVM viewModel = AlphabetVM();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, backgroundColor: Colors.white,
      // appBar: AppBar(forceMaterialTransparency: true,
      //   centerTitle: true,
      //   elevation: 0,
      //   title: Text(
      //     "Alphabets",
      //     style: CustomTextStyle.bold
      //         .copyWith(color: AppColors.black, fontSize: 22),
      //   ),
      // ),
      body: SafeArea(
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
                const SizedBox(height: 25),
                SafeArea(
                  child: Text(
                    "Alphabets",
                    style: CustomTextStyle.bold
                        .copyWith(fontSize: 25, color: Colors.indigo.shade700),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 30,
                              crossAxisSpacing: 30),
                      itemCount: viewModel.alphabetList.length,
                      itemBuilder: (context, index) {
                        return listGrid(viewModel.alphabetList[index], index);
                      },
                    ),
                  ),
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
            )
          ],
        ),
      ),
    );
  }

  Widget listGrid(AlphabetModel model, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => AlphabetScreen(index)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lightBlue.shade50,
            border: Border.all(width: 0.9, color: Colors.blue),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Image.asset(model.image2.toString(), width: 70),
        ),
      ),
    );
  }
}

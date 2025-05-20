import 'package:flutter/material.dart';
import 'package:kids_learning/Grid%20Screen/Numbers/numberModel.dart';
import 'package:kids_learning/Grid%20Screen/Numbers/numberVM.dart';
import 'package:kids_learning/Grid%20Screen/Numbers/number_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class NumberListScreen extends StatefulWidget {
  const NumberListScreen({super.key});

  @override
  State<NumberListScreen> createState() => _NumberListScreenState();
}

class _NumberListScreenState extends State<NumberListScreen> {
  NumberVM viewModel = NumberVM();
  @override
  Widget build(BuildContext context) {
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
                    const SizedBox(height: 25),
                    SafeArea(
                      child: Text(
                        "Numbers",
                        style: CustomTextStyle.bold.copyWith(
                            fontSize: 25, color: Colors.indigo.shade700),
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
                          itemCount: viewModel.numberList.length,
                          itemBuilder: (context, index) {
                            return listGrid(viewModel.numberList[index], index);
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
          );
        }));
  }

  Widget listGrid(NumberModel model, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => NumberScreen(index)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lightBlue.shade50,
            border: Border.all(width: 0.9, color: Colors.blue),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(model.numberImage.toString(),
                width: 70) //Image.asset(model.number.toString(), width: 70),
            ),
      ),
    );
  }
}

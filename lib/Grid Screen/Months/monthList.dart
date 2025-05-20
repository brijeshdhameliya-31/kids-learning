import 'package:flutter/material.dart';
import 'package:kids_learning/Grid%20Screen/Months/monthVM.dart';
import 'package:kids_learning/Grid%20Screen/Months/months_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class MonthListScreen extends StatefulWidget {
  const MonthListScreen({super.key});

  @override
  State<MonthListScreen> createState() => _MonthListScreenState();
}

class _MonthListScreenState extends State<MonthListScreen> {
  MonthVM viewModel = MonthVM();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MonthVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<MonthVM>(builder: (context, value, _) {
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
                        "Months",
                        style: CustomTextStyle.bold.copyWith(
                            fontSize: 25, color: Colors.indigo.shade700),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        child: ListView.builder(
                          itemCount: viewModel.monthList.length,
                          itemBuilder: (context, index) {
                            return listGrid(viewModel.monthList[index], index);
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

  Widget listGrid(MonthModel model, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => MonthScreen(index)));
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.lightBlue.shade50,
              border: Border.all(width: 0.9, color: Colors.blue),
              borderRadius: BorderRadius.circular(15)),
          child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Center(
                child: Text("${model.monthName}",
                    style: CustomTextStyle.bold.copyWith(
                        fontSize: 20,
                        color: AppColors.black,
                        fontFamily: "newFont",
                        fontWeight: FontWeight.bold)),
              )),
        ),
      ),
    );
  }
}

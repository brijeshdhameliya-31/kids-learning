import 'package:flutter/material.dart';
import 'package:kids_learning/Listen%20And%20Guess/Alphabet%20Listen/alpabets_Listen_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/Color%20Listen/color_listen_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/Number%20Listen/number_Listen_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/listenVM.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';

class ListenAndGuessScreen extends StatefulWidget {
  const ListenAndGuessScreen({super.key});

  @override
  State<ListenAndGuessScreen> createState() => _ListenAndGuessScreenState();
}

class _ListenAndGuessScreenState extends State<ListenAndGuessScreen> {
  ListenVM viewModel = ListenVM();

  onTap(ListenGuessType type) {
    switch (type) {
      case ListenGuessType.alphabet:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AlpabetsListenScreen()));
        break;
      case ListenGuessType.number:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const NumberListenScreen()));
        break;
      case ListenGuessType.color:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ColorListenScreen()));
         break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.skyBlue.withOpacity(0.99),
      body: SafeArea(
          child: Stack(children: [
        Container(
          height: 70,
          // width: MediaQuery.of(context).size.width /1.2,
          decoration: const BoxDecoration(
              color: Colors.white12,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.4,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              children: [
                const SizedBox(height: 60),
                Text("Start Listen and Guess!",
                    style: CustomTextStyle.semibold
                        .copyWith(color: AppColors.black, fontSize: 27)),
                const SizedBox(height: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: 0.75,
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 30,
                      ),
                      itemCount: viewModel.allGrid.length,
                      itemBuilder: (context, index) {
                        return gridItem(viewModel.allGrid[index]);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/images/homeIcon/back1.png", width: 200))
      ])),
    );
  }

  Widget gridItem(ListenGuessModel model) {
    return InkWell(
      onTap: () {
        onTap(model.type);
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.transparent, borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(5),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: AppColors.black, width: 0.7),
                    color: model.color,
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 0.5,
                          spreadRadius: 1.5,
                          blurStyle: BlurStyle.inner)
                    ]),
                child: Stack(
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomRight: Radius.circular(150))),
                    ),
                    Center(
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child:
                              Image.asset(model.image.toString(), width: 140)),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Text(
                model.name,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: CustomTextStyle.semibold
                    .copyWith(fontSize: 18, color: AppColors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:kids_learning/Listen%20And%20Guess/Alphabet%20Listen/alpabets_Listen_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/Color%20Listen/color_listen_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/Count%20and%20Guess/count_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/Missing%20Fill%20Up/missing_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/Number%20Listen/number_Listen_screen.dart';
import 'package:kids_learning/Listen%20And%20Guess/listenVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class ListenAndGuessScreen extends StatefulWidget {
  const ListenAndGuessScreen({super.key});

  @override
  State<ListenAndGuessScreen> createState() => _ListenAndGuessScreenState();
}

class _ListenAndGuessScreenState extends State<ListenAndGuessScreen>
    with TickerProviderStateMixin {
  ListenVM viewModel = ListenVM();
  late AnimationController _controller;

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
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ColorListenScreen()));
        break;
      case ListenGuessType.count:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const CountScreen()));
        break;
      case ListenGuessType.missing:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MissingScreen()));
        break;
    }
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ListenVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<ListenVM>(builder: (context, value, _) {
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
                        child: AnimationLimiter(
                          child: GridView.builder(
                            padding: EdgeInsets.only(
                                left: 20, right: 20, bottom: 25),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 20,
                                    crossAxisSpacing: 20,
                                    childAspectRatio: 0.80),
                            itemCount: viewModel.allGrid.length,
                            itemBuilder: (context, index) {
                              final item = viewModel.allGrid[index];
                              // final animation = Tween(begin: 0.0, end: 1.0)
                              //     .animate(CurvedAnimation(
                              //         parent: _controller,
                              //         curve: Interval(0.1 * index, 0.9,
                              //             curve: Curves.easeInOut)));
                              return InkWell(
                                onTap: () {
                                  onTap(item.type);
                                },
                                child: AnimationConfiguration.staggeredGrid(
                                  position: index,
                                  duration: const Duration(milliseconds: 500),
                                  columnCount: 2,
                                  child: ScaleAnimation(
                                    scale: 0.7,
                                    child: FadeInAnimation(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: item.color,
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            border: Border.all(
                                                width: 0.7,
                                                color: AppColors.black)),
                                        child: Stack(
                                          children: [
                                            Container(
                                              height: 150,
                                              width: 150,
                                              decoration: const BoxDecoration(
                                                  color: Colors.white12,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  25),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  150))),
                                            ),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.all(
                                                      10.0),
                                                  child: Image.asset(
                                                    item.image,
                                                    fit: BoxFit.fill,
                                                    width: double.infinity,
                                                    // height: 150,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 7),
                                                child: Text(
                                                  item.name,
                                                  textAlign: TextAlign.center,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 2,
                                                  style: CustomTextStyle
                                                      .semibold
                                                      .copyWith(
                                                          fontSize: 18,
                                                          color:
                                                              AppColors.black),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              );
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
                  child: Image.asset("assets/images/homeIcon/back1.png",
                      width: 200)),
              value.loading ? LoaderView() : Container()
            ])),
          );
        }));
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

import 'package:flutter/material.dart';
import 'package:kids_learning/Grid%20Screen/Shapes/shapeModel.dart';
import 'package:kids_learning/Grid%20Screen/Shapes/shape_screen.dart';
import 'package:kids_learning/Grid%20Screen/Shapes/shapeVM.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class ShapeListScreen extends StatefulWidget {
  const ShapeListScreen({super.key});

  @override
  State<ShapeListScreen> createState() => _ShapeListScreenState();
}

class _ShapeListScreenState extends State<ShapeListScreen>
    with TickerProviderStateMixin {
  ShapeVM viewModel = ShapeVM();
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        controller.forward();
      }
    });
  }

  @override
  void dispose() {
    controller.stop();
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ShapeVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<ShapeVM>(builder: (context, value, _) {
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
                        "Shapes",
                        style: CustomTextStyle.bold.copyWith(
                            fontSize: 25, color: Colors.indigo.shade700),
                      ),
                    ),
                    Expanded(
                      child: GridView.builder(
                        padding:
                            const EdgeInsets.only(left: 30, right: 30, top: 30),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 30,
                                crossAxisSpacing: 30),
                        itemCount: viewModel.allShapeList.length,
                        itemBuilder: (context, index) {
                          final start = 0.1 * index;
                          final end = (start + 0.5).clamp(0.0, 1.0);
                          final animation = Tween(begin: 0.0, end: 1.0).animate(
                              CurvedAnimation(
                                  parent: controller,
                                  curve: Interval(start.clamp(0.0, 1.0), end,
                                      curve: Curves.easeInOut)));
                          return ScaleTransition(
                            scale: animation,
                            child:
                                listGrid(viewModel.allShapeList[index], index),
                          );
                        },
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

  Widget listGrid(ShapeModel model, int index) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ShapeScreen(index)));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lightBlue.shade50,
            boxShadow: const [
              BoxShadow(
                  color: AppColors.skyBlue,
                  blurRadius: 15,
                  offset: Offset(0, 5))
            ],
            // border: Border.all(width: 0.9, color: Colors.blue),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(model.shapeImage.toString(),
                width: 80) //Image.asset(model.number.toString(), width: 70),
            ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:kids_learning/Grid%20Screen/Alphabet/alphabetListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Animals/animalsListScreen.dart';
import 'package:kids_learning/Grid%20Screen/AqauticAnimal/aquaticAnimalListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Birds/birdsListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Colors/colorsListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Days/dayListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Directions/directionListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Flower/flowerListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Fruits/fruitsListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Furnitures/furnitureListScreen.dart';
import 'package:kids_learning/Grid%20Screen/KitchenSet/kitchenSetListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Months/monthList.dart';
import 'package:kids_learning/Grid%20Screen/Numbers/numberListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Occupation/occupationListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Seasons/seasonListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Shapes/shapeListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Vegetables/vegetableListScreen.dart';
import 'package:kids_learning/Grid%20Screen/Vehicles/vehiclesListScreen.dart';
import 'package:kids_learning/Home%20Screen/homeVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeVM viewModel = HomeVM();

  onTap(HomeGridType type) {
    switch (type) {
      case HomeGridType.alphabet:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AlphabetListScreen()));
        break;
      case HomeGridType.numbers:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NumberListScreen()));
        break;
      case HomeGridType.colors:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ColorListScreen()));
        break;
      case HomeGridType.shapes:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ShapeListScreen()));
        break;
      case HomeGridType.birds:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const BirdsListScreen()));
        break;
      case HomeGridType.animals:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const AnimalsListScreen()));
        break;
      case HomeGridType.flowers:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FlowerListScreen()));
        break;
      case HomeGridType.fruits:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const FruitsListScreen()));
        break;
      case HomeGridType.vegetables:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const VegetableListScreen()));
        break;
      case HomeGridType.vehicles:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const VehicleListScreen()));
        break;
      case HomeGridType.bodyParts:
        break;
      case HomeGridType.kitchenUtensils:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const KitchenSetListScreen()));
        break;
      case HomeGridType.aquaticAnimal:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const AquaticAnimalListScreen()));
        break;
      case HomeGridType.occupation:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const OccupationListScreen()));
        break;
      case HomeGridType.furnitures:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const FurnitureListScreen()));
        break;
      case HomeGridType.months:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MonthListScreen()));
        break;
      case HomeGridType.days:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const DayListScreen()));
        break;
      case HomeGridType.seasons:
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const SeasonListScreen()));
        break;
      case HomeGridType.direction:
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DirectionListScreen()));
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<HomeVM>(builder: (context, value, _) {
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
                      Text("Start Learning !",
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
                  child: Image.asset("assets/images/homeIcon/back1.png",
                      width: 200)),
              value.loading ? LoaderView() : Container()
            ])),
          );
        }));
  }

  Widget gridItem(HomeModel model) {
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

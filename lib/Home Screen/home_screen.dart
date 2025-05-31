import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:kids_learning/Ads/InterstitialAdManager.dart';
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
import 'package:kids_learning/Profile%20Screen/profile_screen.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/pageview/pageview_screen.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/textStyle.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  HomeVM viewModel = HomeVM();
  late AnimationController _controller;
  String? userName;
  Uint8List? imageBytes;

  onTap(HomeGridType type) {
    switch (type) {
      case HomeGridType.alphabet:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AlphabetListScreen()));
        });
        break;
      case HomeGridType.numbers:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const NumberListScreen()));
        });
        break;
      case HomeGridType.colors:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ColorListScreen()));
        });
        break;
      case HomeGridType.shapes:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const ShapeListScreen()));
        });
        break;
      case HomeGridType.birds:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const BirdsListScreen()));
        });
        break;
      case HomeGridType.animals:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AnimalsListScreen()));
        });
        break;
      case HomeGridType.flowers:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FlowerListScreen()));
        });
        break;
      case HomeGridType.fruits:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FruitsListScreen()));
        });
        break;
      case HomeGridType.vegetables:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VegetableListScreen()));
        });
        break;
      case HomeGridType.vehicles:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const VehicleListScreen()));
        });
        break;
      case HomeGridType.bodyParts:
        break;
      case HomeGridType.kitchenUtensils:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const KitchenSetListScreen()));
        });
        break;
      case HomeGridType.aquaticAnimal:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const AquaticAnimalListScreen()));
        });
        break;
      case HomeGridType.occupation:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const OccupationListScreen()));
        });
        break;
      case HomeGridType.furnitures:
        InterstitialAdManager.shared.showAdAndNavigate(() {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const FurnitureListScreen()));
        });
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

  profileAction() {
    Route route = MaterialPageRoute(builder: (contex) => const ProfileScreen());
    Navigator.push(context, route).then(onGoBack);
  }

  FutureOr onGoBack(dynamic isRefreh) {
    if (isRefreh) {
      saveDetail();
    }
  }

  @override
  void initState() {
    super.initState();
    saveDetail();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();
  }

  saveDetail() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    String? name = preferences.getString('userName');
    String? base64Image = preferences.getString('profileImage');
    setState(() {
      userName = name;
      if (base64Image != null) {
        imageBytes = base64Decode(base64Image);
      }
    });
  }

  Future<void> launchPolicy() async {
    final Uri _url = Uri.parse(
        'https://sites.google.com/view/kids-learningprivacy-policy/home');
    if (!await launchUrl(_url, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_url';
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeVM>(
        create: (BuildContext context) => viewModel,
        child: Consumer<HomeVM>(builder: (context, value, _) {
          return Scaffold(
            backgroundColor: AppColors.skyBlue.withOpacity(0.99),
            body: Stack(
              children: [
                SafeArea(
                  child: Container(
                    // height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                        // color: Colors.white,
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.blue.shade200,
                          Colors.white,
                          Colors.blue.shade200
                        ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  const SizedBox(width: 15),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 15),
                                    child: Container(
                                      width: 65,
                                      height: 65,
                                      decoration: const BoxDecoration(
                                          color: AppColors.pink,
                                          shape: BoxShape.circle),
                                      child: imageBytes != null
                                          ? CircleAvatar(
                                              radius: 35,
                                              backgroundImage:
                                                  MemoryImage(imageBytes!),
                                            )
                                          : Container(
                                              height: 65,
                                              width: 65,
                                              decoration: const BoxDecoration(
                                                  shape: BoxShape.circle),
                                              child: ClipRRect(
                                                child: Image.asset(
                                                  "assets/images/homeIcon/profile_placeholder.png",
                                                  fit: BoxFit.fill,
                                                ),
                                              )),
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            DateTime.now().hour < 12
                                                ? "Good Morning !"
                                                : DateTime.now().hour < 18
                                                    ? "Good Afternoon !"
                                                    : "Good Evening !",
                                            style: CustomTextStyle.semibold
                                                .copyWith(
                                                    letterSpacing: 0.5,
                                                    fontSize: 20,
                                                    color: AppColors
                                                        .textTitleColor)),
                                        Text("Hi , ${userName ?? ""}",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: CustomTextStyle.semibold
                                                .copyWith(
                                                    letterSpacing: 0.5,
                                                    fontSize: 18,
                                                    color: AppColors.black)),
                                        Text("Let's Start Learning",
                                            style: CustomTextStyle.semibold
                                                .copyWith(
                                                    letterSpacing: 0.5,
                                                    fontSize: 16,
                                                    color: AppColors.black))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            PopupMenuButton<String>(
                                onSelected: (value) {
                                  print('Selected: $value');
                                },
                                itemBuilder: (BuildContext context) => [
                                      PopupMenuItem(
                                          value: "Option 1",
                                          onTap: () {
                                            profileAction();
                                          },
                                          child: Text(
                                            "Profile",
                                            style: CustomTextStyle.medium
                                                .copyWith(
                                                    color: AppColors.black,
                                                    fontSize: 15),
                                          )),
                                      PopupMenuItem(
                                          value: "Option 2",
                                          onTap: () {
                                            launchPolicy();
                                          },
                                          child: Text(
                                            "Privacy Policy",
                                            style: CustomTextStyle.medium
                                                .copyWith(
                                                    color: AppColors.black,
                                                    fontSize: 15),
                                          )),
                                      PopupMenuItem(
                                          value: "Option 1",
                                          onTap: () {
                                            showAlert();
                                          },
                                          child: Text(
                                            "Logout",
                                            style: CustomTextStyle.medium
                                                .copyWith(
                                                    color: AppColors.black,
                                                    fontSize: 15),
                                          )),
                                    ],
                                offset: const Offset(0, 50),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(right: 7, top: 10),
                                  child: Icon(Icons.more_vert, size: 30),
                                )),
                          ],
                        ),
                        const SizedBox(height: 10),
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
                                                            topLeft: Radius
                                                                .circular(25),
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
                                                    padding:
                                                        const EdgeInsets.all(
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.only(
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
                                                            color: AppColors
                                                                .black),
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
                value.loading ? LoaderView() : Container()
              ],
            ),
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

  showAlert() {
    return showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text(
                "Kids Learning",
                textAlign: TextAlign.center,
                style: CustomTextStyle.semibold
                    .copyWith(color: AppColors.black, fontSize: 16),
              ),
              content: Text(
                "Are you sure you want to logout?",
                textAlign: TextAlign.center,
                style: CustomTextStyle.medium
                    .copyWith(fontSize: 14, color: AppColors.black),
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    buttons("No", Colors.red, () => Navigator.pop(context)),
                    const SizedBox(width: 12),
                    buttons("Yes", Colors.green, () => logoutAction())
                  ],
                )
              ],
            ));
  }

  logoutAction() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.remove("skipData");
    preferences.remove("formData");
    preferences.remove("userName");
    preferences.remove("profileImage");
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => const PageViewScreen()),
        (route) => false);
  }

  Widget buttons(String title, Color color, Function() onTap) {
    return InkWell(
      onTap: () => onTap(),
      child: Container(
        height: 45,
        width: 70,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(title,
              style: CustomTextStyle.medium
                  .copyWith(color: AppColors.white, fontSize: 15)),
        ),
      ),
    );
  }
}

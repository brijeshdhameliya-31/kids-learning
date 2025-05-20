// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/colors.dart';
import 'package:kids_learning/widget/image.dart';

enum HomeGridType {
  alphabet,
  numbers,
  colors,
  shapes,
  birds,
  animals,
  flowers,
  fruits,
  vegetables,
  vehicles,
  bodyParts,
  kitchenUtensils,
  aquaticAnimal,
  occupation,
  furnitures,
  months,
  days,
  seasons,
  direction
}

class HomeVM extends BaseVM {
  List<HomeModel> allGrid = [
    HomeModel(
        name: "Alphabets",
        image: Images.alphabet,
        color: Colors.indigo.shade200,
        type: HomeGridType.alphabet),
    HomeModel(
        name: "Numbers",
        image: Images.numbers,
        color: Colors.pink.shade100,
        type: HomeGridType.numbers),
    HomeModel(
        name: "Colors",
        image: Images.colors,
        color: Colors.yellow.shade200,
        type: HomeGridType.colors),
    HomeModel(
        name: "Shapes",
        image: Images.shapes,
        color: Colors.green.shade100,
        type: HomeGridType.shapes),
    HomeModel(
        name: "Birds",
        image: Images.birds,
        color: Colors.orange.shade50,
        type: HomeGridType.birds),
    HomeModel(
        name: "Animals",
        image: Images.animals,
        color: Colors.cyan.shade100,
        type: HomeGridType.animals),
    HomeModel(
        name: "Flowers",
        image: Images.flowers,
        color: Colors.grey.shade300,
        type: HomeGridType.flowers),
    HomeModel(
        name: "Fruits",
        image: Images.fruits,
        color: Colors.indigo.shade100,
        type: HomeGridType.fruits),
    HomeModel(
        name: "Vegetables",
        image: Images.vegetables,
        color: Colors.lightBlue.shade50,
        type: HomeGridType.vegetables),
    HomeModel(
        name: "Vehicles",
        image: Images.vehicles,
        color: AppColors.pink.withOpacity(0.3),
        type: HomeGridType.vehicles),
    HomeModel(
        name: "Body Parts",
        image: Images.bodyParts,
        color: AppColors.fenta.withOpacity(0.3),
        type: HomeGridType.bodyParts),
    HomeModel(
        name: "Kitchen Utensil",
        image: Images.kitchenSet,
        color: AppColors.green.withOpacity(0.5),
        type: HomeGridType.kitchenUtensils),
    HomeModel(
        name: "Aquatic Animals",
        image: Images.aquaticAnimal,
        color: Colors.yellow.withOpacity(0.5),
        type: HomeGridType.aquaticAnimal),
    HomeModel(
        name: "Occupations",
        image: Images.occupation,
        color: Colors.cyanAccent.withOpacity(0.5),
        type: HomeGridType.occupation),
    HomeModel(
        name: "Furnitures",
        image: Images.furniture,
        color: Colors.indigo.withOpacity(0.2),
        type: HomeGridType.furnitures),
    HomeModel(
        name: "Months",
        image: Images.months,
        color: Colors.blue.withOpacity(0.3),
        type: HomeGridType.months),
    HomeModel(
        name: "Days",
        image: Images.days,
        color: Colors.purpleAccent.withOpacity(0.3),
        type: HomeGridType.days),
    HomeModel(
        name: "Seasons",
        image: Images.seasons,
        color: Colors.greenAccent.withOpacity(0.4),
        type: HomeGridType.seasons),
    HomeModel(
        name: "Directions",
        image: Images.directions,
        color: Colors.limeAccent.withOpacity(0.4),
        type: HomeGridType.direction),
  ];
}

class HomeModel {
  String name;
  String image;
  Color color;
  HomeGridType type;

  HomeModel({
    required this.name,
    required this.image,
    required this.color,
    required this.type,
  });
}

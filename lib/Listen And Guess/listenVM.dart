import 'package:flutter/material.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/image.dart';

enum ListenGuessType {
  alphabet,
  number,
  color,
}

class ListenVM extends BaseVM {
  List<ListenGuessModel> allGrid = [
    ListenGuessModel(
        name: "Alphabet",
        image: Images.alphabet,
        color: Colors.indigo.shade200,
        type: ListenGuessType.alphabet),
    ListenGuessModel(
        name: "Number",
        image: Images.numbers,
        color: Colors.pink.shade100,
        type: ListenGuessType.number),
    ListenGuessModel(
        name: "Colors",
        image: Images.colors,
        color: Colors.yellow.shade200,
        type: ListenGuessType.color),
  ];
}

class ListenGuessModel {
  String name;
  String image;
  Color color;
  ListenGuessType type;

  ListenGuessModel({
    required this.name,
    required this.image,
    required this.color,
    required this.type,
  });
}

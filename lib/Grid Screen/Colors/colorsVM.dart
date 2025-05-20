import 'package:kids_learning/Grid%20Screen/Colors/colorsModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class ColorVM extends BaseVM {
  List<ColorsModel> colorList = [
    ColorsModel(colorName: "Black", colorImage: ColorImage.black),
    ColorsModel(colorName: "Blue", colorImage: ColorImage.blue),
    ColorsModel(colorName: "Green", colorImage: ColorImage.green),
    ColorsModel(colorName: "Grey", colorImage: ColorImage.grey),
    ColorsModel(colorName: "Indigo", colorImage: ColorImage.indigo),
    ColorsModel(colorName: "Maroon", colorImage: ColorImage.maroon),
    ColorsModel(colorName: "Orange", colorImage: ColorImage.orange),
    ColorsModel(colorName: "Pink", colorImage: ColorImage.pink),
    ColorsModel(colorName: "Purple", colorImage: ColorImage.purple),
    ColorsModel(colorName: "Red", colorImage: ColorImage.red),
    ColorsModel(colorName: "White", colorImage: ColorImage.white),
    ColorsModel(colorName: "Yellow", colorImage: ColorImage.yellow),
  ];
}

class ColorImage {
  static ColorImage shared = ColorImage();
  static const red = "assets/images/colors/Red.png";
  static const black = "assets/images/colors/Black.png";
  static const blue = "assets/images/colors/Blue.png";
  static const green = "assets/images/colors/Green.png";
  static const grey = "assets/images/colors/Grey.png";
  static const indigo = "assets/images/colors/Indigo.png";
  static const maroon = "assets/images/colors/Maroon.png";
  static const orange = "assets/images/colors/Orange.png";
  static const pink = "assets/images/colors/Pink.png";
  static const purple = "assets/images/colors/Purple.png";
  static const yellow = "assets/images/colors/Yellow.png";
  static const white = "assets/images/colors/White.png";
}

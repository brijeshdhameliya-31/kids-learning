import 'package:kids_learning/Grid%20Screen/Colors/colorsVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class ColorsListenVM extends BaseVM {
  List<ColorListenModel> newList = [
    ColorListenModel(colorName: "Orange", question: {
      "Pink": false,
      "Orange": true,
      "White": false,
      "Maroon": false
    }, answer: {
      ColorImage.pink: false,
      ColorImage.orange: true,
      ColorImage.white: false,
      ColorImage.maroon: false,
    }),
    ColorListenModel(colorName: "Yellow", question: {
      "Red": false,
      "Grey": false,
      "Green": false,
      "Yellow": true
    }, answer: {
      ColorImage.red: false,
      ColorImage.grey: false,
      ColorImage.green: false,
      ColorImage.yellow: true,
    }),
    ColorListenModel(colorName: "Black", question: {
      "Indigo": false,
      "Maroon": false,
      "Black": true,
      "White": false
    }, answer: {
      ColorImage.indigo: false,
      ColorImage.maroon: false,
      ColorImage.black: true,
      ColorImage.white: false
    }),
    ColorListenModel(colorName: "Grey", question: {
      "White": false,
      "Grey": true,
      "Purple": false,
      "Pink": false
    }, answer: {
      ColorImage.white: false,
      ColorImage.grey: true,
      ColorImage.purple: false,
      ColorImage.pink: false
    }),
    ColorListenModel(colorName: "White", question: {
      "White": true,
      "Blue": false,
      "Orange": false,
      "Yellow": false
    }, answer: {
      ColorImage.white: true,
      ColorImage.blue: false,
      ColorImage.orange: false,
      ColorImage.yellow: false
    }),
    ColorListenModel(colorName: "Maroon", question: {
      "Green": false,
      "Purple": false,
      "Indigo": false,
      "Maroon": true
    }, answer: {
      ColorImage.green: false,
      ColorImage.purple: false,
      ColorImage.indigo: false,
      ColorImage.maroon: true
    }),
    ColorListenModel(colorName: "Purple", question: {
      "Pink": false,
      "White": false,
      "Red": false,
      "Purple": true,
    }, answer: {
      ColorImage.pink: false,
      ColorImage.white: false,
      ColorImage.red: false,
      ColorImage.purple: true,
    }),
    ColorListenModel(colorName: "Red", question: {
      "Red": true,
      "Grey": false,
      "Green": false,
      "Orange": false,
    }, answer: {
      ColorImage.red: true,
      ColorImage.grey: false,
      ColorImage.green: false,
      ColorImage.orange: false,
    }),
    ColorListenModel(colorName: "Blue", question: {
      "Black": false,
      "Maroon": false,
      "Blue": true,
      "Pink": false,
    }, answer: {
      ColorImage.black: false,
      ColorImage.maroon: false,
      ColorImage.blue: true,
      ColorImage.pink: false,
    }),
    ColorListenModel(colorName: "Green", question: {
      "Grey": false,
      "Yellow": false,
      "Purple": false,
      "Green": true,
    }, answer: {
      ColorImage.grey: false,
      ColorImage.yellow: false,
      ColorImage.purple: false,
      ColorImage.green: true,
    }),
    ColorListenModel(colorName: "Indigo", question: {
      "Maroon": false,
      "Indigo": true,
      "Blue": false,
      "White": false,
    }, answer: {
       ColorImage.maroon: false,
      ColorImage.indigo: true,
      ColorImage.blue: false,
      ColorImage.white: false,
    }),
    ColorListenModel(colorName: "Pink", question: {
      "Purple": false,
      "Black": false,
      "Orange": false,
      "Pink": true,
    }, answer: {
       ColorImage.purple: false,
      ColorImage.black: false,
      ColorImage.orange: false,
      ColorImage.pink: true,
    }),
  ];
  // black blue green grey indigo maroon orange pink purple red white yellow
}

class ColorListenModel {
  String? colorName;
  Map<String, bool>? question;
  Map<String, bool>? answer;

  ColorListenModel({this.colorName, this.question, this.answer});
}

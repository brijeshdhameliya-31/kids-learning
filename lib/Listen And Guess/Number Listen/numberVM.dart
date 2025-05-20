import 'package:kids_learning/Grid%20Screen/Numbers/numberVM.dart';

class NumberListenVM {
  List<NumberListenModel> newList = [
    NumberListenModel(numberName: "Five", question: {
      "One": false,
      "Four": false,
      "Ten": false,
      "Five": true
    }, answer: {
      NumberImage.one: false,
      NumberImage.four: false,
      NumberImage.ten: false,
      NumberImage.five: true
    }),
    NumberListenModel(numberName: "Ten", question: {
      "Two": false,
      "Ten": true,
      "Six": false,
      "One": false
    }, answer: {
      NumberImage.two: false,
      NumberImage.ten: true,
      NumberImage.six: false,
      NumberImage.one: false
    }),
    NumberListenModel(numberName: "Three", question: {
      "Seven": false,
      "Eight": false,
      "Three": true,
      "nine": false
    }, answer: {
      NumberImage.seven: false,
      NumberImage.eight: false,
      NumberImage.three: true,
      NumberImage.nine: false
    }),
    NumberListenModel(numberName: "Four", question: {
      "Three": false,
      "One": false,
      "Ten": false,
      "Four": true
    }, answer: {
      NumberImage.three: false,
      NumberImage.one: false,
      NumberImage.ten: false,
      NumberImage.four: true
    }),
    NumberListenModel(numberName: "Two", question: {
      "Four": false,
      "Nine": false,
      "One": false,
      "Two": true
    }, answer: {
      NumberImage.four: false,
      NumberImage.nine: false,
      NumberImage.one: false,
      NumberImage.two: true,
    }),
    NumberListenModel(numberName: "Zero", question: {
      "Six": false,
      "Zero": true,
      "Five": false,
      "Eight": false
    }, answer: {
      NumberImage.six: false,
      NumberImage.zero: true,
      NumberImage.five: false,
      NumberImage.eight: false,
    }),
    NumberListenModel(numberName: "Seven", question: {
      "Seven": true,
      "One": false,
      "Three": false,
      "Zero": false
    }, answer: {
      NumberImage.seven: true,
      NumberImage.one: false,
      NumberImage.three: false,
      NumberImage.zero: false,
    }),

    NumberListenModel(numberName: "Nine", question: {
      "One": false,
      "Nine": true,
      "Eight": false,
      "Ten": false
    }, answer: {
      NumberImage.one: false,
      NumberImage.nine: true,
      NumberImage.eight: false,
      NumberImage.ten: false,
    }),

    NumberListenModel(numberName: "One", question: {
      "Three": false,
      "Five": false,
      "Seven": false,
      "One": true
    }, answer: {
      NumberImage.three: false,
      NumberImage.five: false,
      NumberImage.seven: false,
      NumberImage.one: true,
    }),

    NumberListenModel(numberName: "Six", question: {
      "One": false,
      "Six": true,
      "Zero": false,
      "Three": false,
    }, answer: {
      NumberImage.one: false,
      NumberImage.six: true,
      NumberImage.zero: false,
      NumberImage.three: false,
    }),

    NumberListenModel(numberName: "Eight", question: {
      "Eight": true,
      "Nine": false,
      "Two": false,
      "Five": false
    }, answer: {
      NumberImage.eight: true,
      NumberImage.nine: false,
      NumberImage.two: false,
      NumberImage.five: false,
    }),
  ];
}

class NumberListenModel {
  String? numberName;
  Map<String, bool>? question;
  Map<String, bool>? answer;

  NumberListenModel({this.numberName, this.question, this.answer});
}

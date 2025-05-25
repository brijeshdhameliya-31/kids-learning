import 'package:kids_learning/Grid%20Screen/Numbers/numberVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class CountVM extends BaseVM {
  List<CountModel> countlist = [
    CountModel(images: [
      "assets/images/count/ball.png",
      "assets/images/count/ball.png",
      "assets/images/count/ball.png"
    ], question: {
      "Four": false,
      "Three": true,
      "One": false,
      "Six": false
    }, answer: {
      NumberImage.four: false,
      NumberImage.three: true,
      NumberImage.one: false,
      NumberImage.six: false
    }),
    CountModel(images: [
      "assets/images/count/pineapple.png",
      "assets/images/count/pineapple.png",
      "assets/images/count/pineapple.png",
      "assets/images/count/pineapple.png",
      "assets/images/count/pineapple.png",
    ], question: {
      "Eight": false,
      "Ten": false,
      "Three": false,
      "Five": true
    }, answer: {
      NumberImage.eight: false,
      NumberImage.ten: false,
      NumberImage.three: false,
      NumberImage.five: true
    }),
    CountModel(images: [
      "assets/images/vehicle/car.png",
      "assets/images/vehicle/car.png",
      "assets/images/vehicle/car.png",
      "assets/images/vehicle/car.png",
      "assets/images/vehicle/car.png",
      "assets/images/vehicle/car.png",
      "assets/images/vehicle/car.png",
    ], question: {
      "Seven": true,
      "Nine": false,
      "Two": false,
      "Five": false
    }, answer: {
      NumberImage.seven: true,
      NumberImage.nine: false,
      NumberImage.two: false,
      NumberImage.five: false
    }),
    CountModel(images: [
      "assets/images/count/ice-cream.png",
      "assets/images/count/ice-cream.png",
      "assets/images/count/ice-cream.png",
      "assets/images/count/ice-cream.png",
    ], question: {
      "One": false,
      "Three": false,
      "Four": true,
      "Ten": false
    }, answer: {
      NumberImage.one: false,
      NumberImage.three: false,
      NumberImage.four: true,
      NumberImage.ten: false
    }),
    CountModel(images: [
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
      "assets/images/count/fish.png",
    ], question: {
      "Eight": false,
      "Nine": true,
      "Two": false,
      "Five": false
    }, answer: {
      NumberImage.eight: false,
      NumberImage.nine: true,
      NumberImage.two: false,
      NumberImage.five: false
    }),
    CountModel(images: [
      "assets/images/count/sun.png",
      "assets/images/count/sun.png",
    ], question: {
      "Nine": false,
      "One": false,
      "Two": true,
      "Four": false
    }, answer: {
      NumberImage.nine: false,
      NumberImage.one: false,
      NumberImage.two: true,
      NumberImage.four: false
    }),
    CountModel(images: [
      "assets/images/count/poet.png",
      "assets/images/count/poet.png",
      "assets/images/count/poet.png",
      "assets/images/count/poet.png",
      "assets/images/count/poet.png",
      "assets/images/count/poet.png",
    ], question: {
      "Six": true,
      "Seven": false,
      "Ten": false,
      "Zero": false
    }, answer: {
      NumberImage.six: true,
      NumberImage.seven: false,
      NumberImage.ten: false,
      NumberImage.zero: false
    }),
    CountModel(images: [
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
      "assets/images/count/flower.png",
    ], question: {
      "Nine": false,
      "One": false,
      "Two": false,
      "Eight": true
    }, answer: {
      NumberImage.nine: false,
      NumberImage.one: false,
      NumberImage.two: false,
      NumberImage.eight: true
    }),
    CountModel(images: [
      "assets/images/count/ship.png"
    ], question: {
      "Seven": false,
      "One": true,
      "Zero": false,
      "Three": false
    }, answer: {
      NumberImage.seven: false,
      NumberImage.one: true,
      NumberImage.zero: false,
      NumberImage.three: false
    }),
    CountModel(images: [
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
      "assets/images/count/unicorn.png",
    ], question: {
      "Ten": true,
      "Nine": false,
      "Five": false,
      "Two": false
    }, answer: {
      NumberImage.ten: true,
      NumberImage.nine: false,
      NumberImage.five: false,
      NumberImage.two: false
    }),
  ];
}

// 3 5 7 4 9 2 6 8 10 1
class CountModel {
  List<String>? images;
  Map<String, bool>? question;
  Map<String, bool>? answer;

  CountModel({this.images, this.question, this.answer});
}

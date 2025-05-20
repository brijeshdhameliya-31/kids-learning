import 'package:kids_learning/Grid%20Screen/Animals/animalsModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class AnimalsVM extends BaseVM {
  List<AnimalsModel> animalList = [
    AnimalsModel(animalName: "Bear", animalImage: AnimalImage.bear),
    AnimalsModel(animalName: "Buffalo", animalImage: AnimalImage.buffalo),
    AnimalsModel(animalName: "Camel", animalImage: AnimalImage.camel),
    AnimalsModel(animalName: "Cat", animalImage: AnimalImage.cat),
    AnimalsModel(animalName: "Cow", animalImage: AnimalImage.cow),
    AnimalsModel(animalName: "Dear", animalImage: AnimalImage.dear),
    AnimalsModel(animalName: "Dog", animalImage: AnimalImage.dog),
    AnimalsModel(animalName: "Donkey", animalImage: AnimalImage.donkey),
    AnimalsModel(animalName: "Elephant", animalImage: AnimalImage.elephant),
    AnimalsModel(animalName: "Fox", animalImage: AnimalImage.fox),
    AnimalsModel(animalName: "Giraffe", animalImage: AnimalImage.giraffe),
    AnimalsModel(animalName: "Goat", animalImage: AnimalImage.goat),
    AnimalsModel(animalName: "Horse", animalImage: AnimalImage.horse),
    AnimalsModel(animalName: "Kangaroo", animalImage: AnimalImage.kangaroo),
    AnimalsModel(animalName: "Leopard", animalImage: AnimalImage.leopard),
    AnimalsModel(animalName: "Lion", animalImage: AnimalImage.lion),
    AnimalsModel(animalName: "Monkey", animalImage: AnimalImage.monkey),
    AnimalsModel(animalName: "Panda", animalImage: AnimalImage.panda),
    AnimalsModel(animalName: "Pig", animalImage: AnimalImage.pig),
    AnimalsModel(animalName: "Rabbit", animalImage: AnimalImage.rabbit),
    AnimalsModel(animalName: "Rhinoceros", animalImage: AnimalImage.rhinoceros),
    AnimalsModel(animalName: "Sheep", animalImage: AnimalImage.sheep),
    AnimalsModel(animalName: "Tiger", animalImage: AnimalImage.tiger),
    AnimalsModel(animalName: "Wolf", animalImage: AnimalImage.wolf),
    AnimalsModel(animalName: "Yak", animalImage: AnimalImage.yak),
    AnimalsModel(animalName: "Zebra", animalImage: AnimalImage.zebra),
  ];
}

class AnimalImage {
  static const cow = "assets/images/animals/cow.png";
  static const buffalo = "assets/images/animals/buffalo.png";
  static const cat = "assets/images/alphabets/C.png";
  static const rabbit = "assets/images/animals/rabbit.png";
  static const pig = "assets/images/animals/pig.png";
  static const wolf = "assets/images/animals/wolf.png";
  static const bear = "assets/images/animals/bear.png";
  static const tiger = "assets/images/animals/tiger.png";
  static const camel = "assets/images/animals/camel.png";
  static const fox = "assets/images/animals/fox.png";
  static const giraffe = "assets/images/animals/giraffe.png";
  static const leopard = "assets/images/animals/leopard.png";
  static const elephant = "assets/images/animals/elephant.png";
  static const donkey = "assets/images/animals/donkey.png";
  static const monkey = "assets/images/animals/monkey.png";
  static const goat = "assets/images/animals/goat.png";
  static const kangaroo = "assets/images/animals/kangaroo.png";
  static const panda = "assets/images/animals/panda.png";
  static const lion = "assets/images/animals/lion.png";
  static const dog = "assets/images/animals/dog.png";
  static const horse = "assets/images/animals/horse.png";
  static const sheep = "assets/images/animals/sheep.png";
  static const dear = "assets/images/animals/dear.png";
  static const yak = "assets/images/animals/yak.png";
  static const zebra = "assets/images/animals/zebra.png";
  static const rhinoceros = "assets/images/animals/rhinoceros.png";
}

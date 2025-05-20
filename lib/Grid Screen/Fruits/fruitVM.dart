import 'package:kids_learning/Grid%20Screen/Fruits/fruitsModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/image.dart';

class FruitVM extends BaseVM {
  List<FruitModel> fruitList = [
    FruitModel(fruitName: "Apple", fruitImage: FruitImage.apple),
    FruitModel(fruitName: "Avocado", fruitImage: FruitImage.avocado),
    FruitModel(fruitName: "Banana", fruitImage: FruitImage.banana),
    FruitModel(fruitName: "Blueberry", fruitImage: FruitImage.blueberry),
    FruitModel(fruitName: "Cherry", fruitImage: FruitImage.cherry),
    FruitModel(fruitName: "Coconut", fruitImage: FruitImage.coconut),
    FruitModel(fruitName: "Custard Apple", fruitImage: FruitImage.custardApple),
    FruitModel(fruitName: "Dragon fruit", fruitImage: FruitImage.dragonfruit),
    FruitModel(fruitName: "Grapes", fruitImage: FruitImage.grapes),
    FruitModel(fruitName: "Guava", fruitImage: FruitImage.guava),
    FruitModel(fruitName: "Kiwi", fruitImage: FruitImage.kiwi),
    FruitModel(fruitName: "Lemon", fruitImage: FruitImage.lemon),
    FruitModel(fruitName: "Lychee", fruitImage: FruitImage.lychee),
    FruitModel(fruitName: "Mango", fruitImage: FruitImage.mango),
    FruitModel(fruitName: "Orange", fruitImage: FruitImage.oranges),
    FruitModel(fruitName: "Papaya", fruitImage: FruitImage.papaya),
    FruitModel(fruitName: "Peach", fruitImage: FruitImage.peach),
    FruitModel(fruitName: "Pear", fruitImage: FruitImage.pear),
    FruitModel(fruitName: "Pineapple", fruitImage: FruitImage.pineapple),
    FruitModel(fruitName: "Pomegranate", fruitImage: FruitImage.pomegranate),
    FruitModel(fruitName: "Raspberry", fruitImage: FruitImage.raspberry),
    FruitModel(fruitName: "Starfruit", fruitImage: FruitImage.starfruit),
    FruitModel(fruitName: "Strawberry", fruitImage: FruitImage.strawberry),
    FruitModel(fruitName: "Watermelon", fruitImage: FruitImage.watermelon),
  ];
}

class FruitImage {
   static const apple = "assets/images/fruits/apple.png";
  static const mango = "assets/images/fruits/mango.png";
  static const banana = "assets/images/fruits/banana.png";
  static const oranges = "assets/images/fruits/orange.png";
  static const grapes = "assets/images/fruits/grapes.png";
  static const lychee = "assets/images/fruits/litchi.png";
  static const strawberry = "assets/images/fruits/strawberry.png";
  static const pineapple = "assets/images/fruits/pineapple.png";
  static const custardApple = "assets/images/fruits/custardApple.png";
  static const watermelon = "assets/images/fruits/watermelon.png";
  static const pomegranate = "assets/images/fruits/pomegranate.png";
  static const coconut = "assets/images/fruits/coconut.png";
  static const papaya = "assets/images/fruits/papaya.png";
  static const guava = "assets/images/fruits/guava.png";
  static const lemon = "assets/images/fruits/lemon.png";
  static const cherry = "assets/images/fruits/cherry.png";
  static const dragonfruit = "assets/images/fruits/dragonfruit.png";
  static const pear = "assets/images/fruits/pear.png";
  static const avocado = "assets/images/fruits/avocado.png";
  static const kiwi = "assets/images/fruits/kiwi.png";
  static const blueberry = "assets/images/fruits/blueberry.png";
  static const peach = "assets/images/fruits/peach.png";
  static const starfruit = "assets/images/fruits/starfruit.png";
  static const raspberry = "assets/images/fruits/raspberry.png";
}
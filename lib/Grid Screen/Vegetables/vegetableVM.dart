import 'package:kids_learning/Grid%20Screen/Vegetables/vegetableModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class VegetableVM extends BaseVM {
  List<VegetableModel> vegetableList = [
    VegetableModel(vegetableName: "Beetroot", vegetableImage: VegetableImage.beetroot),
    VegetableModel(vegetableName: "Brinjal", vegetableImage: VegetableImage.brinjal),
    VegetableModel(vegetableName: "Broccoli", vegetableImage: VegetableImage.broccoli),
    VegetableModel(vegetableName: "Cabbage", vegetableImage: VegetableImage.cabbage),
    VegetableModel(vegetableName: "Capsicum", vegetableImage: VegetableImage.capsicum),
    VegetableModel(vegetableName: "Carrot", vegetableImage: VegetableImage.carrot),
    VegetableModel(
        vegetableName: "Cauliflower", vegetableImage: VegetableImage.cauliflower),
    VegetableModel(vegetableName: "Corn", vegetableImage: VegetableImage.corn),
    VegetableModel(vegetableName: "Cucumber", vegetableImage: VegetableImage.cucumber),
    VegetableModel(vegetableName: "Garlic", vegetableImage: VegetableImage.garlic),
    VegetableModel(vegetableName: "Ginger", vegetableImage: VegetableImage.ginger),
    VegetableModel(
        vegetableName: "Green Chili", vegetableImage: VegetableImage.greenChili),
    VegetableModel(
        vegetableName: "Lady finger", vegetableImage: VegetableImage.ladyFinger),
    VegetableModel(vegetableName: "Leek", vegetableImage: VegetableImage.leek),
    VegetableModel(vegetableName: "Mushroom", vegetableImage: VegetableImage.mushroom),
    VegetableModel(vegetableName: "Onion", vegetableImage: VegetableImage.onion),
    VegetableModel(vegetableName: "Peas", vegetableImage: VegetableImage.peas),
    VegetableModel(
        vegetableName: "Peppermint", vegetableImage: VegetableImage.peppermint),
    VegetableModel(vegetableName: "Potato", vegetableImage: VegetableImage.potato),
    VegetableModel(vegetableName: "Pumpkin", vegetableImage: VegetableImage.pumpkin),
    VegetableModel(vegetableName: "Radish", vegetableImage: VegetableImage.radish),
    VegetableModel(vegetableName: "Red Chili", vegetableImage: VegetableImage.redChili),
    VegetableModel(vegetableName: "Spinach", vegetableImage: VegetableImage.spinach),
    VegetableModel(vegetableName: "Tomato", vegetableImage: VegetableImage.totmato),
  ];
}

class VegetableImage {
   static const potato = "assets/images/vegetable/potato.png";
  static const totmato = "assets/images/vegetable/tomato.png";
  static const cabbage = "assets/images/vegetable/cabbage.png";
  static const cauliflower = "assets/images/vegetable/cauliflowers.png";
  static const brinjal = "assets/images/vegetable/brinjal.png";
  static const cucumber = "assets/images/vegetable/cucumber.png";
  static const carrot = "assets/images/vegetable/carrot.png";
  static const peas = "assets/images/vegetable/peas.png";
  static const radish = "assets/images/vegetable/radish.png";
  static const ladyFinger = "assets/images/vegetable/ladysFinger.png";
  static const capsicum = "assets/images/vegetable/capsicum.png";
  static const spinach = "assets/images/vegetable/spinach.png";
  static const beetroot = "assets/images/vegetable/beetroot.png";
  static const broccoli = "assets/images/vegetable/broccoli.png";
  static const corn = "assets/images/vegetable/corn.png";
  static const pumpkin = "assets/images/vegetable/pumpkin.png";
  static const mushroom = "assets/images/vegetable/mushroom.png";
  static const leek = "assets/images/vegetable/Leek.png";
  static const garlic = "assets/images/vegetable/garlic.png";
  static const onion = "assets/images/vegetable/onion.png";
  static const peppermint = "assets/images/vegetable/mint.png";
  static const greenChili = "assets/images/vegetable/greenChili.png";
  static const redChili = "assets/images/vegetable/redChili.png";
  static const ginger = "assets/images/vegetable/Ginger.png";
}
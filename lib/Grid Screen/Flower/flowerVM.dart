import 'package:kids_learning/Grid%20Screen/Flower/flowerModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class FlowerVM extends BaseVM {
  List<FlowerModel> flowerList = [
    FlowerModel(flowerName: "AloeVera",flowerImage: FlowerImage.aloeVera),
    FlowerModel(flowerName: "Daisy",flowerImage: FlowerImage.daisy),
    FlowerModel(flowerName: "Iris",flowerImage: FlowerImage.iris),
    FlowerModel(flowerName: "Jasmine",flowerImage: FlowerImage.jasmine),
    FlowerModel(flowerName: "Lavender",flowerImage: FlowerImage.lavender),
    FlowerModel(flowerName: "Lily",flowerImage: FlowerImage.lily),
    FlowerModel(flowerName: "Lotus",flowerImage: FlowerImage.lotus),
    FlowerModel(flowerName: "Magnolia",flowerImage: FlowerImage.magnolia),
    FlowerModel(flowerName: "Oleander",flowerImage: FlowerImage.oleander),
    FlowerModel(flowerName: "Red Hibicus",flowerImage: FlowerImage.redHibicus),
    FlowerModel(flowerName: "Rose",flowerImage: FlowerImage.rose),
    FlowerModel(flowerName: "Saffron",flowerImage: FlowerImage.saffron),
    FlowerModel(flowerName: "Stramonium",flowerImage: FlowerImage.stramonium),
    FlowerModel(flowerName: "Sunflower",flowerImage: FlowerImage.sunflower),
    FlowerModel(flowerName: "Tulip",flowerImage: FlowerImage.tulip),
  ];
}
class FlowerImage {
  static const aloeVera = "assets/images/flowers/aloeVera.png";
  static const  daisy = "assets/images/flowers/daisy.png";
  static const iris = "assets/images/flowers/iris.png";
  static const jasmine = "assets/images/flowers/jasmine.png";
  static const  lavender = "assets/images/flowers/lavender.png";
  static const  lily = "assets/images/flowers/lily.png";
  static const  lotus = "assets/images/flowers/lotus.png";
  static const  magnolia = "assets/images/flowers/magnolia.png";
  static const  oleander = "assets/images/flowers/Oleander.png";
  static const  redHibicus = "assets/images/flowers/Redhibicus.png";
  static const  rose = "assets/images/flowers/rose.png";
  static const  saffron = "assets/images/flowers/saffron.png";
  static const  stramonium = "assets/images/flowers/Stramonium.png";
  static const  sunflower = "assets/images/flowers/sunflower.png";
  static const  tulip = "assets/images/flowers/tulip.png";
}
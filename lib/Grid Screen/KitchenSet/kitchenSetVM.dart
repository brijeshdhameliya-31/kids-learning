
import 'package:kids_learning/Grid%20Screen/KitchenSet/kitchenSetModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/image.dart';

class KitchenSetVM extends BaseVM {
  
  List<KitchenSetModel> kitchenList = [
    KitchenSetModel(setName: "Apron",setImage: UtelsilsImage.apron),
    KitchenSetModel(setName: "Blender",setImage: UtelsilsImage.blender),
    KitchenSetModel(setName: "Bottle",setImage: UtelsilsImage.bottle),
    KitchenSetModel(setName: "Bowl",setImage: UtelsilsImage.bowl),
    KitchenSetModel(setName: "Chopping-board",setImage: UtelsilsImage.chopping),
    KitchenSetModel(setName: "Cup",setImage: UtelsilsImage.cup),
    KitchenSetModel(setName: "Fork",setImage: UtelsilsImage.fork),
    KitchenSetModel(setName: "Glass",setImage: UtelsilsImage.glass),
    KitchenSetModel(setName: "Grater",setImage: UtelsilsImage.grater),
    KitchenSetModel(setName: "Jar",setImage: UtelsilsImage.jar),
    KitchenSetModel(setName: "Kettle",setImage: UtelsilsImage.kettle),
    KitchenSetModel(setName: "Knife",setImage: UtelsilsImage.knife),
    KitchenSetModel(setName: "Mug",setImage: UtelsilsImage.mug),
    KitchenSetModel(setName: "Ovenmitt",setImage: UtelsilsImage.ovenmitt),
    KitchenSetModel(setName: "Pan",setImage: UtelsilsImage.pan),
    KitchenSetModel(setName: "Peeler",setImage: UtelsilsImage.peeler),
    KitchenSetModel(setName: "Plate",setImage: UtelsilsImage.plate),
    KitchenSetModel(setName: "Pot",setImage: UtelsilsImage.pot),
    KitchenSetModel(setName: "Rolling-pin",setImage: UtelsilsImage.rollingPin),
    KitchenSetModel(setName: "Saucer",setImage: UtelsilsImage.saucer),
    KitchenSetModel(setName: "Spoon",setImage: UtelsilsImage.spoon),
    KitchenSetModel(setName: "Strainer",setImage: UtelsilsImage.strainer),
    KitchenSetModel(setName: "Toaster",setImage: UtelsilsImage.toaster),
    KitchenSetModel(setName: "Tray",setImage: UtelsilsImage.tray),
    KitchenSetModel(setName: "Whisk",setImage: UtelsilsImage.whisk),
  ];

}
class UtelsilsImage {
  //Kitchen Set
  static const pot = "assets/images/kitchen/pot.png";
  static const pan = "assets/images/kitchen/pan.png";
  static const knife = "assets/images/kitchen/knife.png";
  static const fork = "assets/images/kitchen/fork.png";
  static const spoon = "assets/images/kitchen/spoons.png";
  static const plate = "assets/images/kitchen/Plate.png";
  static const bowl = "assets/images/kitchen/bowl.png";
  static const cup = "assets/images/kitchen/cup.png";
  static const glass = "assets/images/kitchen/glass.png";
  static const saucer = "assets/images/kitchen/saucer.png";
  static const mug = "assets/images/kitchen/mug.png";
  static const tray = "assets/images/kitchen/tray.png";
  static const chopping = "assets/images/kitchen/chopping.png";
  static const grater = "assets/images/kitchen/grater.png";
  static const whisk = "assets/images/kitchen/whisk.png";
  static const rollingPin = "assets/images/kitchen/rolling-pin.png";
  static const kettle = "assets/images/kitchen/kettle.png";
  static const bottle = "assets/images/kitchen/bottles.png";
  static const jar = "assets/images/kitchen/jar.png";
  static const blender = "assets/images/kitchen/blender.png";
  static const apron = "assets/images/kitchen/apron.png";
  static const ovenmitt = "assets/images/kitchen/ovenMitt.png";
  static const peeler = "assets/images/kitchen/Peeler.png";
  static const strainer = "assets/images/kitchen/strainer.png";
  static const toaster = "assets/images/kitchen/toaster.png";
}
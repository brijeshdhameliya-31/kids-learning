import 'package:kids_learning/Grid%20Screen/Furnitures/furnitureModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class FurnitureVM extends BaseVM {
  List<FurnitureModel> furnitureList = [
    FurnitureModel(itemName: "Bed",itemImage: FurnitureImage.bed),
    FurnitureModel(itemName: "Bench",itemImage: FurnitureImage.bench),
    FurnitureModel(itemName: "Chair",itemImage: FurnitureImage.chair),
    FurnitureModel(itemName: "Couch",itemImage: FurnitureImage.couch),
    FurnitureModel(itemName: "Desk",itemImage: FurnitureImage.desk),
    FurnitureModel(itemName: "Dining Table",itemImage: FurnitureImage.diningTable),
    FurnitureModel(itemName: "Drawer",itemImage: FurnitureImage.drawer),
    FurnitureModel(itemName: "Dresser",itemImage: FurnitureImage.dresser),
    FurnitureModel(itemName: "Jewelryrack",itemImage: FurnitureImage.jewelryrack),
    FurnitureModel(itemName: "Mirror",itemImage: FurnitureImage.mirror),
    FurnitureModel(itemName: "Rocker Chair",itemImage: FurnitureImage.rockerChair),
    FurnitureModel(itemName: "Sofa",itemImage: FurnitureImage.sofa),
    FurnitureModel(itemName: "Stool",itemImage: FurnitureImage.stool),
    FurnitureModel(itemName: "Swing",itemImage: FurnitureImage.swing),
    FurnitureModel(itemName: "Table",itemImage: FurnitureImage.table),
    FurnitureModel(itemName: "Tablelamp",itemImage: FurnitureImage.tableLamp),
    FurnitureModel(itemName: "TV-Stand",itemImage: FurnitureImage.tvStand),
    FurnitureModel(itemName: "Wardrobe",itemImage: FurnitureImage.wardrobe),
  ];
}

class FurnitureImage {
  static const bed = "assets/images/furnitures/bed.png";
  static const bench  = "assets/images/furnitures/bench.png";
  static const chair  = "assets/images/furnitures/chair.png";
  static const couch  = "assets/images/furnitures/couch.png";
  static const desk  = "assets/images/furnitures/desk.png";
  static const diningTable  = "assets/images/furnitures/dininigTable.png";
  static const  drawer = "assets/images/furnitures/drawers.png";
  static const dresser  = "assets/images/furnitures/dresser.png";
  static const jewelryrack  = "assets/images/furnitures/jewelryrack.png";
  static const mirror  = "assets/images/furnitures/mirror.png";
  static const rockerChair  = "assets/images/furnitures/rockerChair.png";
  static const sofa  = "assets/images/furnitures/sofa.png";
  static const stool  = "assets/images/furnitures/stool.png";
  static const swing  = "assets/images/furnitures/swing.png";
  static const table  = "assets/images/furnitures/table.png";
  static const tableLamp  = "assets/images/furnitures/tablelamp.png";
  static const tvStand  = "assets/images/furnitures/tvStand.png";
  static const wardrobe  = "assets/images/furnitures/wardrobe.png";
}
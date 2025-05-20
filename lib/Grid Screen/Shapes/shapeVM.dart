import 'package:kids_learning/Grid%20Screen/Shapes/shapeModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class ShapeVM extends BaseVM {
  List<ShapeModel> allShapeList = [
    ShapeModel(shapeName: "Arrow", shapeImage: ShapeImage.arrow),
    ShapeModel(shapeName: "Circle", shapeImage: ShapeImage.circle),
    ShapeModel(shapeName: "Crescent", shapeImage: ShapeImage.crescent),
    ShapeModel(shapeName: "Cross", shapeImage: ShapeImage.cross),
    ShapeModel(shapeName: "Hexagon", shapeImage: ShapeImage.hexagon),
    ShapeModel(shapeName: "Octagon", shapeImage: ShapeImage.octagon),
    ShapeModel(shapeName: "Oval", shapeImage: ShapeImage.oval),
    ShapeModel(
        shapeName: "Parallelogram", shapeImage: ShapeImage.parallelogram),
    ShapeModel(shapeName: "Pentagon", shapeImage: ShapeImage.pentagon),
    ShapeModel(shapeName: "Rectangle", shapeImage: ShapeImage.rectangle),
    ShapeModel(shapeName: "Rhombus", shapeImage: ShapeImage.rhombus),
    ShapeModel(shapeName: "Square", shapeImage: ShapeImage.square),
    ShapeModel(shapeName: "Star", shapeImage: ShapeImage.star),
    ShapeModel(shapeName: "Trapezium", shapeImage: ShapeImage.trapezium),
    ShapeModel(shapeName: "Trapezoid", shapeImage: ShapeImage.trapezoid),
    ShapeModel(shapeName: "Triangle", shapeImage: ShapeImage.triangle),
  ];
}

class ShapeImage {
  static const square = "assets/images/shape/square.png";
  static const arrow = "assets/images/shape/Arrow.png";
  static const circle = "assets/images/shape/Circle.png";
  static const crescent = "assets/images/shape/Crescent.png";
  static const cross = "assets/images/shape/Cross.png";
  static const hexagon = "assets/images/shape/Hexagon.png";
  static const octagon = "assets/images/shape/Octagon.png";
  static const oval = "assets/images/shape/Oval.png";
  static const parallelogram = "assets/images/shape/Parallelogram.png";
  static const pentagon = "assets/images/shape/Pentagon.png";
  static const rectangle = "assets/images/shape/Rectangle.png";
  static const rhombus = "assets/images/shape/Rhombus.png";
  static const star = "assets/images/shape/Star.png";
  static const trapezium = "assets/images/shape/Trapezium.png";
  static const trapezoid = "assets/images/shape/Trapezoid.png";
  static const triangle = "assets/images/shape/Triangle.png";
}

import 'package:kids_learning/models/base_viewmodel.dart';

class DirectionVM extends BaseVM {
  List<DirectionModel> directionList = [
    DirectionModel(directionName: "North"),
    DirectionModel(directionName: "East"),
    DirectionModel(directionName: "South"),
    DirectionModel(directionName: "West"),
  ];
}

class DirectionModel {
  String? directionName;

  DirectionModel({this.directionName});
}

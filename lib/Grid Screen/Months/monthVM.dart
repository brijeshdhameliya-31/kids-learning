import 'package:kids_learning/models/base_viewmodel.dart';

class MonthVM extends BaseVM {
  List<MonthModel> monthList = [
    MonthModel(monthName: "January"),
    MonthModel(monthName: "February"),
    MonthModel(monthName: "March"),
    MonthModel(monthName: "April"),
    MonthModel(monthName: "May"),
    MonthModel(monthName: "June"),
    MonthModel(monthName: "July"),
    MonthModel(monthName: "August"),
    MonthModel(monthName: "September"),
    MonthModel(monthName: "October"),
    MonthModel(monthName: "November"),
    MonthModel(monthName: "December"),
  ];
}

class MonthModel {
  String? monthName;
  MonthModel({this.monthName});
}

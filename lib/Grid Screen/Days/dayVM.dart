
import 'package:kids_learning/models/base_viewmodel.dart';

class DaysVM extends BaseVM {
  List<DayModel> dayList = [
    DayModel(dayName: "Sunday"),
    DayModel(dayName: "Monday"),
    DayModel(dayName: "Tuesday"),
    DayModel(dayName: "Wednesday"),
    DayModel(dayName: "Thursday"),
    DayModel(dayName: "Friday"),
    DayModel(dayName: "Saturday"),
  ];
}

class DayModel {
  String? dayName;
  DayModel({this.dayName});
}
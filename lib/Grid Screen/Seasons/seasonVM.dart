import 'package:kids_learning/models/base_viewmodel.dart';

class SeasonVM extends BaseVM {
  List<SeasonModel> seasonList = [
    SeasonModel(seasonName: "Winter",seasonImage: SeasonImage.winter),
    SeasonModel(seasonName: "Summer",seasonImage: SeasonImage.summer),
    SeasonModel(seasonName: "Monsoon",seasonImage: SeasonImage.monsoon),
  ];
}

class SeasonModel {
  String? seasonName;
  String? seasonImage;
  SeasonModel({this.seasonName,this.seasonImage});
}

class SeasonImage {
  static const winter = "assets/images/seasons/winter.jpg";
  static const summer = "assets/images/seasons/summer.jpg";
  static const monsoon = "assets/images/seasons/monsoon.jpg";
}
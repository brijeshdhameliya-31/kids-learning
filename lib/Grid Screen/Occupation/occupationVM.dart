import 'package:kids_learning/Grid%20Screen/Occupation/occupationModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/image.dart';

class OccupationVM extends BaseVM {
  List<OccupationModel> occupationList = [
    OccupationModel(
        occupationName: "Accountant",
        occupationImage: OccupationImage.accountant),
    OccupationModel(
        occupationName: "Artist", occupationImage: OccupationImage.artist),
    OccupationModel(
        occupationName: "Barber", occupationImage: OccupationImage.barber),
    OccupationModel(
        occupationName: "Blacksmith",
        occupationImage: OccupationImage.blacksmith),
    OccupationModel(
        occupationName: "Carpenter",
        occupationImage: OccupationImage.carpenter),
    OccupationModel(
        occupationName: "Cook", occupationImage: OccupationImage.cook),
    OccupationModel(
        occupationName: "Doctor", occupationImage: OccupationImage.doctor),
    OccupationModel(
        occupationName: "Driver", occupationImage: OccupationImage.driver),
    OccupationModel(
        occupationName: "Electrician",
        occupationImage: OccupationImage.electrician),
    OccupationModel(
        occupationName: "Farmer", occupationImage: OccupationImage.farmer),
    OccupationModel(
        occupationName: "Gardener", occupationImage: OccupationImage.gardener),
    OccupationModel(
        occupationName: "Goldsmith",
        occupationImage: OccupationImage.goldsmith),
    OccupationModel(
        occupationName: "Journalist",
        occupationImage: OccupationImage.journalist),
    OccupationModel(
        occupationName: "Lawyer", occupationImage: OccupationImage.lawyer),
    OccupationModel(
        occupationName: "Nurse", occupationImage: OccupationImage.nurse),
    OccupationModel(
        occupationName: "Plumber", occupationImage: OccupationImage.plumber),
    OccupationModel(
        occupationName: "Police", occupationImage: OccupationImage.police),
    OccupationModel(
        occupationName: "Postman", occupationImage: OccupationImage.postman),
    OccupationModel(
        occupationName: "Scientist",
        occupationImage: OccupationImage.scientist),
    OccupationModel(
        occupationName: "Security Gaurd",
        occupationImage: OccupationImage.securityGaurd),
    OccupationModel(
        occupationName: "Shoemaker",
        occupationImage: OccupationImage.shoemaker),
    OccupationModel(
        occupationName: "Shopkeeper",
        occupationImage: OccupationImage.shopkeeper),
    OccupationModel(
        occupationName: "Soldier", occupationImage: OccupationImage.soldier),
    OccupationModel(
        occupationName: "Tailor", occupationImage: OccupationImage.tailor),
    OccupationModel(
        occupationName: "Teacher", occupationImage: OccupationImage.teacher),
    OccupationModel(
        occupationName: "Waiter", occupationImage: OccupationImage.waiter),
  ];
}

class OccupationImage {
  static const tailor = "assets/images/occupation/tailor.png";
  static const carpenter = "assets/images/occupation/Carpenter.png";
  static const blacksmith = "assets/images/occupation/blacksmith.png";
  static const goldsmith = "assets/images/occupation/goldsmith.png";
  static const barber = "assets/images/occupation/barber.png";
  static const accountant = "assets/images/occupation/accountant.png";
  static const plumber = "assets/images/occupation/plumber.png";
  static const teacher = "assets/images/occupation/teacher.png";
  static const nurse = "assets/images/occupation/nurse.png";
  static const electrician = "assets/images/occupation/electrician.png";
  static const doctor = "assets/images/occupation/doctor.png";
  static const artist = "assets/images/occupation/artist.png";
  static const lawyer = "assets/images/occupation/lawyer.png";
  static const driver = "assets/images/occupation/driver.png";
  static const shoemaker = "assets/images/occupation/shoemaker.png";
  static const cook = "assets/images/occupation/cook.png";
  static const farmer = "assets/images/occupation/farmer.png";
  static const gardener = "assets/images/occupation/gardener.png";
  static const postman = "assets/images/occupation/postman.png";
  static const police = "assets/images/occupation/police.png";
  static const shopkeeper = "assets/images/occupation/shopekeeper.png";
  static const waiter = "assets/images/occupation/waiter.png";
  static const soldier = "assets/images/occupation/soldier.png";
  static const securityGaurd = "assets/images/occupation/securityGaurd.png";
  static const journalist = "assets/images/occupation/journalist.png";
  static const scientist = "assets/images/occupation/scientist.png";
}

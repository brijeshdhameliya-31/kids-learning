import 'package:kids_learning/Grid%20Screen/Vehicles/vehiclesModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class VehicleVM extends BaseVM {
  List<VehicleModel> vehicleList = [
    VehicleModel(vehicleName: "Airplane", vehicleImage: VehicleImage.plane),
    VehicleModel(vehicleName: "Ambulance", vehicleImage: VehicleImage.ambulance),
    VehicleModel(vehicleName: "Bicycle", vehicleImage: VehicleImage.bicycle),
    VehicleModel(vehicleName: "Buildozer", vehicleImage: VehicleImage.buildozer),
    VehicleModel(vehicleName: "Bus", vehicleImage: VehicleImage.bus),
    VehicleModel(vehicleName: "Car", vehicleImage: VehicleImage.car),
    VehicleModel(vehicleName: "Crane", vehicleImage: VehicleImage.crane),
    VehicleModel(vehicleName: "Fire Truck", vehicleImage: VehicleImage.fireTruck),
    VehicleModel(vehicleName: "Helicopter", vehicleImage: VehicleImage.helicopter),
    VehicleModel(vehicleName: "Motorboat", vehicleImage: VehicleImage.motorBoat),
    VehicleModel(vehicleName: "Motorcycle", vehicleImage: VehicleImage.motroCycle),
    VehicleModel(vehicleName: "Police car", vehicleImage: VehicleImage.policeCar),
    VehicleModel(vehicleName: "Rope-way", vehicleImage: VehicleImage.ropeway),
    VehicleModel(vehicleName: "Scooter", vehicleImage: VehicleImage.scooter),
    VehicleModel(vehicleName: "Ship", vehicleImage: VehicleImage.ship),
    VehicleModel(vehicleName: "Submarine", vehicleImage: VehicleImage.subMarine),
    VehicleModel(vehicleName: "Taxi", vehicleImage: VehicleImage.taxi),
    VehicleModel(vehicleName: "Tractor", vehicleImage: VehicleImage.tractor),
    VehicleModel(vehicleName: "Train", vehicleImage: VehicleImage.train),
    VehicleModel(vehicleName: "Truck", vehicleImage: VehicleImage.truck),
  ];
}

class VehicleImage {
  static const bicycle = "assets/images/vehicle/bicycle.png";
  static const bus = "assets/images/vehicle/bus.png";
  static const car = "assets/images/vehicle/car.png";
  static const helicopter = "assets/images/vehicle/helicopter.png";
  static const motroCycle = "assets/images/vehicle/motorcycle.png";
  static const plane = "assets/images/vehicle/plane.png";
  static const scooter = "assets/images/vehicle/scooter.png";
  static const tractor = "assets/images/vehicle/tractor.png";
  static const truck = "assets/images/vehicle/truck.png";
  static const ambulance = "assets/images/vehicle/ambulance.png";
  static const buildozer = "assets/images/vehicle/buildozer.png";
  static const crane = "assets/images/vehicle/crane.png";
  static const fireTruck = "assets/images/vehicle/fireTruck.png";
  static const motorBoat = "assets/images/vehicle/motorBoat.png";
  static const policeCar = "assets/images/vehicle/policeCar.png";
  static const ropeway = "assets/images/vehicle/ropeAway.png";
  static const ship = "assets/images/vehicle/ship.png";
  static const subMarine = "assets/images/vehicle/submarine.png";
  static const taxi = "assets/images/vehicle/taxi.png";
  static const train = "assets/images/vehicle/train.png";
}
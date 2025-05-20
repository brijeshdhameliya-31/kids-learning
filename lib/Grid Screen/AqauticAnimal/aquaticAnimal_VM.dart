import 'package:kids_learning/Grid%20Screen/AqauticAnimal/aquaticAnimalModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class AquaticAnimalVM extends BaseVM {
  List<AquaticAnimalModel> animalList = [
    AquaticAnimalModel(
        animalName: "Carbs", animalImage: AuaticAnimalImage.carbs),
    AquaticAnimalModel(
        animalName: "Dolphin", animalImage: AuaticAnimalImage.dolphin),
    AquaticAnimalModel(animalName: "Fish", animalImage: AuaticAnimalImage.fish),
    AquaticAnimalModel(
        animalName: "Jellyfish", animalImage: AuaticAnimalImage.jellyfish),
    AquaticAnimalModel(
        animalName: "Lobsters", animalImage: AuaticAnimalImage.lobsters),
    AquaticAnimalModel(
        animalName: "Octopus", animalImage: AuaticAnimalImage.octopus),
    AquaticAnimalModel(
        animalName: "Otter", animalImage: AuaticAnimalImage.otter),
    AquaticAnimalModel(
        animalName: "Oysters", animalImage: AuaticAnimalImage.oysters),
    AquaticAnimalModel(
        animalName: "Sea Horses", animalImage: AuaticAnimalImage.seahorses),
    AquaticAnimalModel(animalName: "Seal", animalImage: AuaticAnimalImage.seal),
    AquaticAnimalModel(
        animalName: "Sea Turtles", animalImage: AuaticAnimalImage.seaturtles),
    AquaticAnimalModel(
        animalName: "Shark", animalImage: AuaticAnimalImage.shark),
    AquaticAnimalModel(
        animalName: "Shrimp", animalImage: AuaticAnimalImage.shrimp),
    AquaticAnimalModel(
        animalName: "Starfish", animalImage: AuaticAnimalImage.starFish),
    AquaticAnimalModel(
        animalName: "Swordfish", animalImage: AuaticAnimalImage.swordfish),
    AquaticAnimalModel(
        animalName: "Whale", animalImage: AuaticAnimalImage.whale),
  ];
}

class AuaticAnimalImage {
  static const fish = "assets/images/aqauticAnimals/fish.png";
  static const seal = "assets/images/aqauticAnimals/seal.png";
  static const octopus = "assets/images/aqauticAnimals/octopus.png";
  static const shark = "assets/images/aqauticAnimals/shark.png";
  static const starFish = "assets/images/aqauticAnimals/starfish.png";
  static const whale = "assets/images/aqauticAnimals/whale.png";
  static const jellyfish = "assets/images/aqauticAnimals/jellyfish.png";
  static const dolphin = "assets/images/aqauticAnimals/dolphin.png";
  static const shrimp = "assets/images/aqauticAnimals/shrimp.png";
  static const lobsters = "assets/images/aqauticAnimals/lobsters.png";
  static const seaturtles = "assets/images/aqauticAnimals/seaturtle.png";
  static const carbs = "assets/images/aqauticAnimals/crab.png";
  static const seahorses = "assets/images/aqauticAnimals/seahorse.png";
  static const swordfish = "assets/images/aqauticAnimals/swordfish.png";
  static const otter = "assets/images/aqauticAnimals/otter.png";
  static const oysters = "assets/images/aqauticAnimals/oyster.png";
}


import 'package:kids_learning/Grid%20Screen/Birds/birdsModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/image.dart';

class BirdsVM extends BaseVM{
  List<BirdsModel> birdsList = [
    BirdsModel(birdsName: "Peacock",birdsImage: BirdsImage.peacock),
    BirdsModel(birdsName: "Sparrow",birdsImage: BirdsImage.sparrow),
    BirdsModel(birdsName: "Duck",birdsImage: BirdsImage.duck),
    BirdsModel(birdsName: "Owl",birdsImage: BirdsImage.owl),
    BirdsModel(birdsName: "Crane Birds",birdsImage: BirdsImage.craneBirds),
    BirdsModel(birdsName: "Parrot",birdsImage: BirdsImage.parrot),
    BirdsModel(birdsName: "Crow",birdsImage: BirdsImage.crow),
    BirdsModel(birdsName: "Pigeon",birdsImage: BirdsImage.pigeon),
    BirdsModel(birdsName: "Bat",birdsImage: BirdsImage.bat),
    BirdsModel(birdsName: "Flamingo",birdsImage: BirdsImage.flamingo),
    BirdsModel(birdsName: "Hen",birdsImage: BirdsImage.hen),
    BirdsModel(birdsName: "Nightingale",birdsImage: BirdsImage.nightingle),
    BirdsModel(birdsName: "Eagle",birdsImage: BirdsImage.eagle),
    BirdsModel(birdsName: "Swan",birdsImage: BirdsImage.swan),
    BirdsModel(birdsName: "Rooster",birdsImage: BirdsImage.rooster),
    BirdsModel(birdsName: "Vulture",birdsImage: BirdsImage.vulture),
    BirdsModel(birdsName: "Kingfisher",birdsImage: BirdsImage.kingFisher),
    BirdsModel(birdsName: "Woodpecker",birdsImage: BirdsImage.woodPecker),
    BirdsModel(birdsName: "Heron",birdsImage: BirdsImage.heron),
    BirdsModel(birdsName: "Penguin",birdsImage: BirdsImage.penguin),

  ];
}

class BirdsImage {
   static const bat = "assets/images/birds/bat.png";
  static const craneBirds = "assets/images/birds/craneBirds.png";
  static const crow = "assets/images/birds/crow.png";
  static const duck = "assets/images/birds/duck.png";
  static const eagle = "assets/images/birds/eagle.png";
  static const flamingo = "assets/images/birds/flamingo.png";
  static const hen = "assets/images/birds/hen.png";
  static const heron = "assets/images/birds/heron.png";
  static const kingFisher = "assets/images/birds/kingfisher.png";
  static const nightingle = "assets/images/birds/nightingle.png";
  static const owl = "assets/images/birds/owl.png";
  static const parrot = "assets/images/birds/parrot.png";
  static const peacock = "assets/images/birds/peacock.png";
  static const penguin = "assets/images/birds/penguin.png";
  static const pigeon = "assets/images/birds/pigeon.png";
  static const rooster = "assets/images/birds/rooster.png";
  static const sparrow = "assets/images/birds/sparrow.png";
  static const swan = "assets/images/birds/swan.png";
  static const vulture = "assets/images/birds/vulture.png";
  static const woodPecker = "assets/images/birds/woodpecker.png";
}
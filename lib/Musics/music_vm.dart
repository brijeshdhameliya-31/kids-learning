import 'package:kids_learning/models/base_viewmodel.dart';

class MusicVM extends BaseVM {
  List<MusicModel> musicList = [
    MusicModel(title: "Jonny Jonny...", musicUrl: "assets/music/jonny.mp3"),
    MusicModel(
        title: "Twinkle Twinkle...", musicUrl: "assets/music/twinkle.mp3"),
    MusicModel(
        title: "Baa Baa Black Sheep...",
        musicUrl: "assets/music/ba-ba-black-sheep.mp3"),
    MusicModel(
        title: "Old Mc donald...", musicUrl: "assets/music/old-mcadonald.mp3"),
    MusicModel(
        title: "Wheels on the bus...",
        musicUrl: "assets/music/wheels-on-the-bus.mp3"),
    MusicModel(
        title: "Itsy Bitsy Spider...",
        musicUrl: "assets/music/Itsy-Bitsy-Spider.mp3"),
    MusicModel(
        title: "Rain Rain go away...",
        musicUrl: "assets/music/Rain-Rain-Go-Away.mp3"),
    MusicModel(
        title: "I am littel tea pot...",
        musicUrl: "assets/music/i-am-little-teapot.mp3"),
    MusicModel(
        title: "Hot cross buns...",
        musicUrl: "assets/music/hot-cross-buns.mp3"),
    MusicModel(
        title: "Mary had a little...",
        musicUrl: "assets/music/mary-had-a-little-lamb.mp3"),
    MusicModel(
        title: "Ants go marching...",
        musicUrl: "assets/music/the-ants-go-marching.mp3"),
    MusicModel(
        title: "Clap your hands...",
        musicUrl: "assets/music/clap-clap-clap-your-hands.mp3"),
    MusicModel(
        title: "Row Row your boat...",
        musicUrl: "assets/music/row-row-your-boat.mp3"),
    MusicModel(
        title: "Ringa ringa roses...",
        musicUrl: "assets/music/Ringa-Ringa-Roses.mp3"),
    MusicModel(
        title: "Finger family song...",
        musicUrl: "assets/music/finger-family.mp3"),
    MusicModel(
        title: "Teddy Bear Teady Bear...",
        musicUrl: "assets/music/Teddy-Bear.mp3"),
    MusicModel(
        title: "Today is Monday...",
        musicUrl: "assets/music/today-is-monday.mp3"),
    MusicModel(
        title: "Happy Birthday...",
        musicUrl: "assets/music/Happy-Birthday.mp3"),
  ];
}

class MusicModel {
  String title;
  String musicUrl;

  MusicModel({required this.title, required this.musicUrl});
}

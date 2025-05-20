import 'package:flutter/material.dart';
import 'package:kids_learning/Grid%20Screen/Alphabet/alphabetModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';
import 'package:kids_learning/widget/image.dart';

class AlphabetVM extends BaseVM{
  List<AlphabetModel> alphabetList = [
    AlphabetModel(
        alphabet: "A",
        alphabetName: "Apple",
        alphabetFor: "A for",
        image1: AlphabetImage.a,
        image2: AlphabetImage.a1,
        longPronounce: "A for Apple"),
    AlphabetModel(
        alphabet: "B",
        alphabetName: "Ball",
        alphabetFor: "B for",
        image1: AlphabetImage.b,
        image2: AlphabetImage.b1,
        longPronounce: "B for Ball"),
    AlphabetModel(
        alphabet: "C",
        alphabetName: "Cat",
        alphabetFor: "C for",
        image1: AlphabetImage.c,
        image2: AlphabetImage.c1,
        longPronounce: "C for Cat"),
    AlphabetModel(
        alphabet: "D",
        alphabetName: "Dog",
        alphabetFor: "D for",
        image1: AlphabetImage.d,
        image2: AlphabetImage.d1,
        longPronounce: "D for Dog"),
    AlphabetModel(
        alphabet: "E",
        alphabetFor: " E for",
        alphabetName: "Elephant",
        image1: AlphabetImage.e,
        image2: AlphabetImage.e1,
        longPronounce: "E for Elephant"),
    AlphabetModel(
        alphabet: "F",
        alphabetFor: " F for",
        alphabetName: "Fish",
        image1: AlphabetImage.f,
        image2: AlphabetImage.f1,
        longPronounce: "F for Fish"),
    AlphabetModel(
        alphabet: "G",
        alphabetFor: " G for",
        image1: AlphabetImage.g,
        alphabetName: "Giraffe",
        image2: AlphabetImage.g1,
        longPronounce: "G for Giraffe"),
    AlphabetModel(
        alphabet: "H",
        alphabetFor: " H for",
        image1: AlphabetImage.h,
        image2: AlphabetImage.h1,
        alphabetName: "Horse",
        longPronounce: "H for Horse"),
    AlphabetModel(
        alphabet: "I",
        alphabetFor: " I for",
        image1: AlphabetImage.i,
        alphabetName: "IceCream",
        image2: AlphabetImage.i1,
        longPronounce: "I for IceCream"),
    AlphabetModel(
        alphabet: "J",
        alphabetFor: " J for",
        image1: AlphabetImage.j,
        image2: AlphabetImage.j1,
        alphabetName: "Jeep",
        longPronounce: "J for Jeep"),
    AlphabetModel(
        alphabet: "K",
        alphabetFor: " K for",
        image1: AlphabetImage.k,
        image2: AlphabetImage.k1,
        alphabetName: "Kite",
        longPronounce: "K for Kite"),
    AlphabetModel(
        alphabet: "L",
        alphabetFor: " L for",
        image1: AlphabetImage.l,
        alphabetName: "Lion",
        image2: AlphabetImage.l1,
        longPronounce: "L for Lion"),
    AlphabetModel(
        alphabet: "M",
        alphabetFor: " M for",
        alphabetName: "Mango",
        image1: AlphabetImage.m,
        image2: AlphabetImage.m1,
        longPronounce: "M for Mango"),
    AlphabetModel(
        alphabet: "N",
        alphabetFor: " N for",
        alphabetName: "Nest",
        image1: AlphabetImage.n,
        image2: AlphabetImage.n1,
        longPronounce: "N for Nest"),
    AlphabetModel(
        alphabet: "O",
        alphabetFor: " O for",
        alphabetName: "Orange",
        image1: AlphabetImage.o,
        image2: AlphabetImage.o1,
        longPronounce: "O for Orange"),
    AlphabetModel(
        alphabet: "p",
        alphabetFor: " P for",
        alphabetName: "Pencil",
        image1: AlphabetImage.p,
        image2: AlphabetImage.p1,
        longPronounce: "P for Pencil"),
    AlphabetModel(
        alphabet: "Q",
        alphabetFor: " Q for",
        alphabetName: "Queen",
        image1: AlphabetImage.q,
        image2: AlphabetImage.q1,
        longPronounce: "Q for Queen"),
    AlphabetModel(
        alphabet: "R",
        alphabetFor: " R for",
        image1: AlphabetImage.r,
        alphabetName: "Rainbow",
        image2: AlphabetImage.r1,
        longPronounce: "R for Rainbow"),
    AlphabetModel(
        alphabet: "S",
        alphabetFor: " S for",
        image1: AlphabetImage.s,
        alphabetName: "Sun",
        image2: AlphabetImage.s1,
        longPronounce: "S for Sun"),
    AlphabetModel(
        alphabet: "T",
        alphabetFor: " T for",
        alphabetName: "Tiger",
        image1: AlphabetImage.t,
        image2: AlphabetImage.t1,
        longPronounce: "T for Tiger"),
    AlphabetModel(
        alphabet: "U",
        alphabetFor: " U for",
        alphabetName: "Umbrella",
        image1: AlphabetImage.u,
        image2: AlphabetImage.u1,
        longPronounce: "U for Umbrella"),
    AlphabetModel(
        alphabet: "V",
        alphabetFor: " V for",
        alphabetName: "Van",
        image1: AlphabetImage.v,
        image2: AlphabetImage.v1,
        longPronounce: "V for Van"),
    AlphabetModel(
        alphabet: "W",
        alphabetFor: " W for",
        alphabetName: "Watermelon",
        image1: AlphabetImage.w,
        image2: AlphabetImage.w1,
        longPronounce: "W for Watermelon"),
    AlphabetModel(
        alphabet: "X",
        alphabetFor: " X for",
        alphabetName: "Xmas Tree",
        image1: AlphabetImage.x,
        image2: AlphabetImage.x1,
        longPronounce: "X for Xmas Tree"),
    AlphabetModel(
        alphabet: "Y",
        alphabetFor: " Y for",
        alphabetName: "Yacht",
        image1: AlphabetImage.y,
        image2: AlphabetImage.y1,
        longPronounce: "Y for Yacht"),
    AlphabetModel(
        alphabet: "Z",
        alphabetFor: " Z for",
        alphabetName: "Zeebra",
        image1: AlphabetImage.z,
        image2: AlphabetImage.z1,
        longPronounce: "Z for Zeebra "),
  ];
}

class AlphabetImage {
  static AlphabetImage shared =AlphabetImage();
  static const a = "assets/images/alphabets/A.png";
  static const a1 = "assets/images/alphabets/A1.png";
  static const b = "assets/images/alphabets/B.png";
  static const b1 = "assets/images/alphabets/B1.png";
  static const c = "assets/images/alphabets/C.png";
  static const c1 = "assets/images/alphabets/C1.png";
  static const d = "assets/images/alphabets/D.png";
  static const d1 = "assets/images/alphabets/D1.png";
  static const e = "assets/images/alphabets/E.png";
  static const e1 = "assets/images/alphabets/E1.png";
  static const f = "assets/images/alphabets/F.png";
  static const f1 = "assets/images/alphabets/F1.png";
  static const g = "assets/images/alphabets/G.png";
  static const g1 = "assets/images/alphabets/G1.png";
  static const h = "assets/images/alphabets/H.png";
  static const h1 = "assets/images/alphabets/H1.png";
  static const i = "assets/images/alphabets/I.png";
  static const i1 = "assets/images/alphabets/I1.png";
  static const j = "assets/images/alphabets/J.png";
  static const j1 = "assets/images/alphabets/J1.png";
  static const k = "assets/images/alphabets/K.png";
  static const k1 = "assets/images/alphabets/K1.png";
  static const l = "assets/images/alphabets/L.png";
  static const l1 = "assets/images/alphabets/L1.png";
  static const m = "assets/images/alphabets/M.png";
  static const m1 = "assets/images/alphabets/M1.png";
  static const n = "assets/images/alphabets/N.png";
  static const n1 = "assets/images/alphabets/N1.png";
  static const o = "assets/images/alphabets/O.png";
  static const o1 = "assets/images/alphabets/O1.png";
  static const p = "assets/images/alphabets/P.png";
  static const p1 = "assets/images/alphabets/P1.png";
  static const q = "assets/images/alphabets/Q.png";
  static const q1 = "assets/images/alphabets/Q1.png";
  static const r = "assets/images/alphabets/R.png";
  static const r1 = "assets/images/alphabets/R1.png";
  static const s = "assets/images/alphabets/S.png";
  static const s1 = "assets/images/alphabets/S1.png";
  static const t = "assets/images/alphabets/T.png";
  static const t1 = "assets/images/alphabets/T1.png";
  static const u = "assets/images/alphabets/U.png";
  static const u1 = "assets/images/alphabets/U1.png";
  static const v = "assets/images/alphabets/V.png";
  static const v1 = "assets/images/alphabets/V1.png";
  static const w = "assets/images/alphabets/W.png";
  static const w1 = "assets/images/alphabets/W1.png";
  static const x = "assets/images/alphabets/X.png";
  static const x1 = "assets/images/alphabets/X1.png";
  static const y = "assets/images/alphabets/Y.png";
  static const y1 = "assets/images/alphabets/Y1.png";
  static const z = "assets/images/alphabets/Z.png";
  static const z1 = "assets/images/alphabets/Z1.png";
}
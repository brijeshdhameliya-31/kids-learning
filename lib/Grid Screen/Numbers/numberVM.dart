import 'package:kids_learning/Grid%20Screen/Numbers/numberModel.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class NumberVM extends BaseVM {
  List<NumberModel> numberList = [
    NumberModel(number: "0", numberImage: NumberImage.zero, numberName: "Zero"),
    NumberModel(number: "1", numberImage: NumberImage.one, numberName: "One"),
    NumberModel(number: "2", numberImage: NumberImage.two, numberName: "Two"),
    NumberModel(
        number: "3", numberImage: NumberImage.three, numberName: "Three"),
    NumberModel(number: "4", numberImage: NumberImage.four, numberName: "Four"),
    NumberModel(number: "5", numberImage: NumberImage.five, numberName: "Five"),
    NumberModel(number: "6", numberImage: NumberImage.six, numberName: "Six"),
    NumberModel(
        number: "7", numberImage: NumberImage.seven, numberName: "Seven"),
    NumberModel(
        number: "8", numberImage: NumberImage.eight, numberName: "Eight"),
    NumberModel(number: "9", numberImage: NumberImage.nine, numberName: "Nine"),
    NumberModel(number: "10", numberImage: NumberImage.ten, numberName: "Ten"),
    NumberModel(
        number: "11", numberImage: NumberImage.eleven, numberName: "Eleven"),
    NumberModel(
        number: "12", numberImage: NumberImage.twelve, numberName: "Twelve"),
    NumberModel(
        number: "13",
        numberImage: NumberImage.thirteen,
        numberName: "Thirteen"),
    NumberModel(
        number: "14",
        numberImage: NumberImage.fourteen,
        numberName: "Fourteen"),
    NumberModel(
        number: "15", numberImage: NumberImage.fifteen, numberName: "Fifteen"),
    NumberModel(
        number: "16", numberImage: NumberImage.sixteen, numberName: "Sixteen"),
    NumberModel(
        number: "17",
        numberImage: NumberImage.seventeen,
        numberName: "Seventeen"),
    NumberModel(
        number: "18",
        numberImage: NumberImage.eighteen,
        numberName: "Eighteen"),
    NumberModel(
        number: "19",
        numberImage: NumberImage.nineteen,
        numberName: "Nineteen"),
    NumberModel(
        number: "20", numberImage: NumberImage.twenty, numberName: "Twenty"),
    NumberModel(
        number: "21",
        numberImage: NumberImage.twentyOne,
        numberName: "Twenty-one"),
    NumberModel(
        number: "22",
        numberImage: NumberImage.twentyTwo,
        numberName: "Twenty-two"),
    NumberModel(
        number: "23",
        numberImage: NumberImage.twentyThree,
        numberName: "Twenty-three"),
    NumberModel(
        number: "24",
        numberImage: NumberImage.twentyFour,
        numberName: "Twenty-four"),
    NumberModel(
        number: "25",
        numberImage: NumberImage.twentyFive,
        numberName: "Twenty-five"),
    NumberModel(
        number: "26",
        numberImage: NumberImage.twentySix,
        numberName: "Twenty-six"),
    NumberModel(
        number: "27",
        numberImage: NumberImage.twentySeven,
        numberName: "Twenty-seven"),
    NumberModel(
        number: "28",
        numberImage: NumberImage.twentyEight,
        numberName: "Twenty-eight"),
    NumberModel(
        number: "29",
        numberImage: NumberImage.twentyNine,
        numberName: "Twenty-nine"),
    NumberModel(
        number: "30", numberImage: NumberImage.thirty, numberName: "Thirty"),
    NumberModel(
        number: "31",
        numberImage: NumberImage.thirtyOne,
        numberName: "Thirty-one"),
    NumberModel(
        number: "32",
        numberImage: NumberImage.thirtyTwo,
        numberName: "Thirty-two"),
    NumberModel(
        number: "33",
        numberImage: NumberImage.thirtyThree,
        numberName: "Thirty-three"),
    NumberModel(
        number: "34",
        numberImage: NumberImage.thirtyFour,
        numberName: "Thirty-four"),
    NumberModel(
        number: "35",
        numberImage: NumberImage.thirtyFive,
        numberName: "Thirty-five"),
    NumberModel(
        number: "36",
        numberImage: NumberImage.thirtySix,
        numberName: "Thirty-six"),
    NumberModel(
        number: "37",
        numberImage: NumberImage.thirtySeven,
        numberName: "Thirty-seven"),
    NumberModel(
        number: "38",
        numberImage: NumberImage.thirtyEight,
        numberName: "Thirty-eight"),
    NumberModel(
        number: "39",
        numberImage: NumberImage.thirtyNine,
        numberName: "Thirty-nine"),
    NumberModel(
        number: "40", numberImage: NumberImage.fourty, numberName: "Fourty"),
    NumberModel(
        number: "41",
        numberImage: NumberImage.fourtyOne,
        numberName: "Fourty-one"),
    NumberModel(
        number: "42",
        numberImage: NumberImage.fourtyTwo,
        numberName: "Fourty-two"),
    NumberModel(
        number: "43",
        numberImage: NumberImage.fourtyThree,
        numberName: "Fourty-three"),
    NumberModel(
        number: "44",
        numberImage: NumberImage.fourtyFour,
        numberName: "Fourty-four"),
    NumberModel(
        number: "45",
        numberImage: NumberImage.fourtyFive,
        numberName: "Fourty-five"),
    NumberModel(
        number: "46",
        numberImage: NumberImage.fourtySix,
        numberName: "Fourty-six"),
    NumberModel(
        number: "47",
        numberImage: NumberImage.fourtySeven,
        numberName: "Fourty-seven"),
    NumberModel(
        number: "48",
        numberImage: NumberImage.fourtyEight,
        numberName: "Fourty-eight"),
    NumberModel(
        number: "49",
        numberImage: NumberImage.fourtyNine,
        numberName: "Fourty-nine"),
    NumberModel(
        number: "50", numberImage: NumberImage.fifty, numberName: "Fifty"),
    NumberModel(
        number: "51",
        numberImage: NumberImage.fiftyOne,
        numberName: "Fifty-one"),
    NumberModel(
        number: "52",
        numberImage: NumberImage.fiftyTwo,
        numberName: "Fifty-two"),
    NumberModel(
        number: "53",
        numberImage: NumberImage.fiftyThree,
        numberName: "Fifty-three"),
    NumberModel(
        number: "54",
        numberImage: NumberImage.fiftyFour,
        numberName: "Fifty-four"),
    NumberModel(
        number: "55",
        numberImage: NumberImage.fiftyFive,
        numberName: "Fifty-five"),
    NumberModel(
        number: "56",
        numberImage: NumberImage.fiftySix,
        numberName: "Fifty-six"),
    NumberModel(
        number: "57",
        numberImage: NumberImage.fiftySeven,
        numberName: "Fifty-seven"),
    NumberModel(
        number: "58",
        numberImage: NumberImage.fiftyEight,
        numberName: "Fifty-eight"),
    NumberModel(
        number: "59",
        numberImage: NumberImage.fiftyNine,
        numberName: "Fifty-nine"),
    NumberModel(
        number: "60", numberImage: NumberImage.sixty, numberName: "Sixty"),
    NumberModel(
        number: "61",
        numberImage: NumberImage.sixtyOne,
        numberName: "Sixty-one"),
    NumberModel(
        number: "62",
        numberImage: NumberImage.sixtyTwo,
        numberName: "Sixty-two"),
    NumberModel(
        number: "63",
        numberImage: NumberImage.sixtyThree,
        numberName: "Sixty-three"),
    NumberModel(
        number: "64",
        numberImage: NumberImage.sixtyFour,
        numberName: "Sixty-four"),
    NumberModel(
        number: "65",
        numberImage: NumberImage.sixtyFive,
        numberName: "Sixty-five"),
    NumberModel(
        number: "66",
        numberImage: NumberImage.sixtySix,
        numberName: "Sixty-six"),
    NumberModel(
        number: "67",
        numberImage: NumberImage.sixtySeven,
        numberName: "Sixty-seven"),
    NumberModel(
        number: "68",
        numberImage: NumberImage.sixtyEight,
        numberName: "Sixty-eight"),
    NumberModel(
        number: "69",
        numberImage: NumberImage.sixtyNine,
        numberName: "Sixty-nine"),
    NumberModel(
        number: "70", numberImage: NumberImage.seventy, numberName: "Seventy"),
    NumberModel(
        number: "71",
        numberImage: NumberImage.seventyOne,
        numberName: "Seventy-one"),
    NumberModel(
        number: "72",
        numberImage: NumberImage.seventyTwo,
        numberName: "Seventy-two"),
    NumberModel(
        number: "73",
        numberImage: NumberImage.seventyThree,
        numberName: "Seventy-three"),
    NumberModel(
        number: "74",
        numberImage: NumberImage.seventyFour,
        numberName: "Seventy-four"),
    NumberModel(
        number: "75",
        numberImage: NumberImage.seventyFive,
        numberName: "Seventy-five"),
    NumberModel(
        number: "76",
        numberImage: NumberImage.seventySix,
        numberName: "Seventy-six"),
    NumberModel(
        number: "77",
        numberImage: NumberImage.seventySeven,
        numberName: "Seventy-seven"),
    NumberModel(
        number: "78",
        numberImage: NumberImage.seventyEight,
        numberName: "Seventy-eight"),
    NumberModel(
        number: "79",
        numberImage: NumberImage.seventyNine,
        numberName: "Seventy-nine"),
    NumberModel(
        number: "80", numberImage: NumberImage.eighty, numberName: "Eighty"),
    NumberModel(
        number: "81",
        numberImage: NumberImage.eightyOne,
        numberName: "Eighty-one"),
    NumberModel(
        number: "82",
        numberImage: NumberImage.eightyTwo,
        numberName: "Eighty-two"),
    NumberModel(
        number: "83",
        numberImage: NumberImage.eightyThree,
        numberName: "Eighty-three"),
    NumberModel(
        number: "84",
        numberImage: NumberImage.eightyFour,
        numberName: "Eighty-four"),
    NumberModel(
        number: "85",
        numberImage: NumberImage.eightyFive,
        numberName: "Eighty-five"),
    NumberModel(
        number: "86",
        numberImage: NumberImage.eightySix,
        numberName: "Eighty-six"),
    NumberModel(
        number: "87",
        numberImage: NumberImage.eightySeven,
        numberName: "Eighty-seven"),
    NumberModel(
        number: "88",
        numberImage: NumberImage.eightyEight,
        numberName: "Eighty-eight"),
    NumberModel(
        number: "89",
        numberImage: NumberImage.eightyNine,
        numberName: "Eighty-nine"),
    NumberModel(
        number: "90", numberImage: NumberImage.ninety, numberName: "Ninety"),
    NumberModel(
        number: "91",
        numberImage: NumberImage.ninetyOne,
        numberName: "Ninety-one"),
    NumberModel(
        number: "92",
        numberImage: NumberImage.ninetyTwo,
        numberName: "Ninety-two"),
    NumberModel(
        number: "93",
        numberImage: NumberImage.ninetyThree,
        numberName: "Ninety-three"),
    NumberModel(
        number: "94",
        numberImage: NumberImage.ninetyFour,
        numberName: "Ninety-four"),
    NumberModel(
        number: "95",
        numberImage: NumberImage.ninetyFive,
        numberName: "Ninety-five"),
    NumberModel(
        number: "96",
        numberImage: NumberImage.ninetySix,
        numberName: "Ninety-six"),
    NumberModel(
        number: "97",
        numberImage: NumberImage.ninetySeven,
        numberName: "Ninety-seven"),
    NumberModel(
        number: "98",
        numberImage: NumberImage.ninetyEight,
        numberName: "Ninety-eight"),
    NumberModel(
        number: "99",
        numberImage: NumberImage.ninetyNine,
        numberName: "Ninety-nine"),
    NumberModel(
        number: "100",
        numberImage: NumberImage.oneHundread,
        numberName: "One-hundread"),
  ];
}

class NumberImage {
  static NumberImage shared = NumberImage();
  static const zero = "assets/images/numbers/00.png";
  static const one = "assets/images/numbers/01.png";
  static const two = "assets/images/numbers/02.png";
  static const three = "assets/images/numbers/03.png";
  static const four = "assets/images/numbers/04.png";
  static const five = "assets/images/numbers/05.png";
  static const six = "assets/images/numbers/06.png";
  static const seven = "assets/images/numbers/07.png";
  static const eight = "assets/images/numbers/08.png";
  static const nine = "assets/images/numbers/09.png";
  static const ten = "assets/images/numbers/10.png";
  static const eleven = "assets/images/numbers/11.png";
  static const twelve = "assets/images/numbers/12.png";
  static const thirteen = "assets/images/numbers/13.png";
  static const fourteen = "assets/images/numbers/14.png";
  static const fifteen = "assets/images/numbers/15.png";
  static const sixteen = "assets/images/numbers/16.png";
  static const seventeen = "assets/images/numbers/17.png";
  static const eighteen = "assets/images/numbers/18.png";
  static const nineteen = "assets/images/numbers/19.png";
  static const twenty = "assets/images/numbers/20.png";
  static const twentyOne = "assets/images/numbers/21.png";
  static const twentyTwo = "assets/images/numbers/22.png";
  static const twentyThree = "assets/images/numbers/23.png";
  static const twentyFour = "assets/images/numbers/24.png";
  static const twentyFive = "assets/images/numbers/25.png";
  static const twentySix = "assets/images/numbers/26.png";
  static const twentySeven = "assets/images/numbers/27.png";
  static const twentyEight = "assets/images/numbers/28.png";
  static const twentyNine = "assets/images/numbers/29.png";
  static const thirty = "assets/images/numbers/30.png";
  static const thirtyOne = "assets/images/numbers/31.png";
  static const thirtyTwo = "assets/images/numbers/32.png";
  static const thirtyThree = "assets/images/numbers/33.png";
  static const thirtyFour = "assets/images/numbers/34.png";
  static const thirtyFive = "assets/images/numbers/35.png";
  static const thirtySix = "assets/images/numbers/36.png";
  static const thirtySeven = "assets/images/numbers/37.png";
  static const thirtyEight = "assets/images/numbers/38.png";
  static const thirtyNine = "assets/images/numbers/39.png";
  static const fourty = "assets/images/numbers/40.png";
  static const fourtyOne = "assets/images/numbers/41.png";
  static const fourtyTwo = "assets/images/numbers/42.png";
  static const fourtyThree = "assets/images/numbers/43.png";
  static const fourtyFour = "assets/images/numbers/44.png";
  static const fourtyFive = "assets/images/numbers/45.png";
  static const fourtySix = "assets/images/numbers/46.png";
  static const fourtySeven = "assets/images/numbers/47.png";
  static const fourtyEight = "assets/images/numbers/48.png";
  static const fourtyNine = "assets/images/numbers/49.png";
  static const fifty = "assets/images/numbers/50.png";
  static const fiftyOne = "assets/images/numbers/51.png";
  static const fiftyTwo = "assets/images/numbers/52.png";
  static const fiftyThree = "assets/images/numbers/53.png";
  static const fiftyFour = "assets/images/numbers/54.png";
  static const fiftyFive = "assets/images/numbers/55.png";
  static const fiftySix = "assets/images/numbers/56.png";
  static const fiftySeven = "assets/images/numbers/57.png";
  static const fiftyEight = "assets/images/numbers/58.png";
  static const fiftyNine = "assets/images/numbers/59.png";
  static const sixty = "assets/images/numbers/60.png";
  static const sixtyOne = "assets/images/numbers/61.png";
  static const sixtyTwo = "assets/images/numbers/62.png";
  static const sixtyThree = "assets/images/numbers/63.png";
  static const sixtyFour = "assets/images/numbers/64.png";
  static const sixtyFive = "assets/images/numbers/65.png";
  static const sixtySix = "assets/images/numbers/66.png";
  static const sixtySeven = "assets/images/numbers/67.png";
  static const sixtyEight = "assets/images/numbers/68.png";
  static const sixtyNine = "assets/images/numbers/69.png";
  static const seventy = "assets/images/numbers/70.png";
  static const seventyOne = "assets/images/numbers/71.png";
  static const seventyTwo = "assets/images/numbers/72.png";
  static const seventyThree = "assets/images/numbers/73.png";
  static const seventyFour = "assets/images/numbers/74.png";
  static const seventyFive = "assets/images/numbers/75.png";
  static const seventySix = "assets/images/numbers/76.png";
  static const seventySeven = "assets/images/numbers/77.png";
  static const seventyEight = "assets/images/numbers/78.png";
  static const seventyNine = "assets/images/numbers/79.png";
  static const eighty = "assets/images/numbers/80.png";
  static const eightyOne = "assets/images/numbers/81.png";
  static const eightyTwo = "assets/images/numbers/82.png";
  static const eightyThree = "assets/images/numbers/83.png";
  static const eightyFour = "assets/images/numbers/84.png";
  static const eightyFive = "assets/images/numbers/85.png";
  static const eightySix = "assets/images/numbers/86.png";
  static const eightySeven = "assets/images/numbers/87.png";
  static const eightyEight = "assets/images/numbers/88.png";
  static const eightyNine = "assets/images/numbers/89.png";
  static const ninety = "assets/images/numbers/90.png";
  static const ninetyOne = "assets/images/numbers/91.png";
  static const ninetyTwo = "assets/images/numbers/92.png";
  static const ninetyThree = "assets/images/numbers/93.png";
  static const ninetyFour = "assets/images/numbers/94.png";
  static const ninetyFive = "assets/images/numbers/95.png";
  static const ninetySix = "assets/images/numbers/96.png";
  static const ninetySeven = "assets/images/numbers/97.png";
  static const ninetyEight = "assets/images/numbers/98.png";
  static const ninetyNine = "assets/images/numbers/99.png";
  static const oneHundread = "assets/images/numbers/100.png";
}

import 'package:kids_learning/Grid%20Screen/Alphabet/alphabetVM.dart';
import 'package:kids_learning/models/base_viewmodel.dart';

class AlphabetListenVM extends BaseVM {
  List<AlphabetQuestionModel> newList = [
    AlphabetQuestionModel(alphabetName: "Apple", question: {
      "Elepant": false,
      "Ball": false,
      "Apple": true,
      "Orange": false
    }, answer: {
      AlphabetImage.e1: false,
      AlphabetImage.b1: false,
      AlphabetImage.a1: true,
      AlphabetImage.o1: false
    }),
    AlphabetQuestionModel(alphabetName: "Pencil", question: {
      "Apple": false,
      "Elephant": false,
      "Hourse": false,
      "Pencil": true
    }, answer: {
      AlphabetImage.a1: false,
      AlphabetImage.e1: false,
      AlphabetImage.h1: false,
      AlphabetImage.p1: true
    }),
    AlphabetQuestionModel(alphabetName: "Elephant", question: {
      "Queen": false,
      "Elephant": true,
      "Tiger": false,
      "Sun": false
    }, answer: {
      AlphabetImage.q1: false,
      AlphabetImage.e1: true,
      AlphabetImage.t1: false,
      AlphabetImage.s1: false
    }),
    AlphabetQuestionModel(alphabetName: "Van", question: {
      "Van": true,
      "Zeebra": false,
      "Kite": false,
      "Fish": false
    }, answer: {
      AlphabetImage.v1: true,
      AlphabetImage.z1: false,
      AlphabetImage.k1: false,
      AlphabetImage.f1: false
    }),
    AlphabetQuestionModel(alphabetName: "Ice-cream", question: {
      "Ball": false,
      "Cat": false,
      "Ice-cream": true,
      "Orange": false
    }, answer: {
      AlphabetImage.b1: false,
      AlphabetImage.c1: false,
      AlphabetImage.i1: true,
      AlphabetImage.o1: false
    }),
    AlphabetQuestionModel(alphabetName: "Queen", question: {
      "Queen": true,
      "Kite": false,
      "Xmas-tree": false,
      "Jeep": false
    }, answer: {
      AlphabetImage.q1: true,
      AlphabetImage.k1: false,
      AlphabetImage.x1: false,
      AlphabetImage.j1: false
    }),
    AlphabetQuestionModel(alphabetName: "Xmas-tree", question: {
      "Umbrella": false,
      "Nest": false,
      "Xmas-tree": true,
      "Watermelon": false
    }, answer: {
      AlphabetImage.u1: false,
      AlphabetImage.n1: false,
      AlphabetImage.x1: true,
      AlphabetImage.w1: false
    }),
    AlphabetQuestionModel(alphabetName: "Dog", question: {
      "Sun": false,
      "Apple": false,
      "Cat": false,
      "Dog": true
    }, answer: {
      AlphabetImage.s1: false,
      AlphabetImage.a1: false,
      AlphabetImage.c1: false,
      AlphabetImage.d1: true
    }),
    AlphabetQuestionModel(alphabetName: "Umbrella", question: {
      "Ball": false,
      "Umbrella": true,
      "Nest": false,
      "Pencil": false
    }, answer: {
      AlphabetImage.b1: false,
      AlphabetImage.u1: true,
      AlphabetImage.n1: false,
      AlphabetImage.p1: false
    }),
    AlphabetQuestionModel(alphabetName: "Lion", question: {
      "Dog": false,
      "Cat": false,
      "Lion": true,
      "Apple": false
    }, answer: {
      AlphabetImage.d1: false,
      AlphabetImage.c1: false,
      AlphabetImage.l1: true,
      AlphabetImage.a1: false
    }),
    AlphabetQuestionModel(alphabetName: "Yacht", question: {
      "Queen": false,
      "Rainbow": false,
      "Pencil": false,
      "Yacht": true
    }, answer: {
      AlphabetImage.q1: false,
      AlphabetImage.r1: false,
      AlphabetImage.p1: false,
      AlphabetImage.y1: true
    }),
    AlphabetQuestionModel(alphabetName: "Tiger", question: {
      "Cat": false,
      "Tiger": true,
      "Dog": false,
      "Horse": false
    }, answer: {
      AlphabetImage.c1: false,
      AlphabetImage.t1: true,
      AlphabetImage.d1: false,
      AlphabetImage.h1: false
    }),
    AlphabetQuestionModel(alphabetName: "Sun", question: {
      "Sun": true,
      "Nest": false,
      "Ball": false,
      "Mango": false
    }, answer: {
      AlphabetImage.s1: true,
      AlphabetImage.n1: false,
      AlphabetImage.b1: false,
      AlphabetImage.m1: false
    }),
    AlphabetQuestionModel(alphabetName: "Zeebra", question: {
      "Tiger": false,
      "Giraffe": false,
      "Horse": false,
      "Zeebra": true
    }, answer: {
      AlphabetImage.t1: false,
      AlphabetImage.g1: false,
      AlphabetImage.h1: false,
      AlphabetImage.z1: true
    }),
    AlphabetQuestionModel(alphabetName: "Mango", question: {
      "Apple": false,
      "Mango": true,
      "Orange": false,
      "Kite": false
    }, answer: {
      AlphabetImage.a1: false,
      AlphabetImage.m1: true,
      AlphabetImage.o1: false,
      AlphabetImage.k1: false
    }),
    AlphabetQuestionModel(alphabetName: "Giraffe", question: {
      "Lion": false,
      "Tiger": false,
      "Cat": false,
      "Giraffe": true
    }, answer: {
      AlphabetImage.l1: false,
      AlphabetImage.t1: false,
      AlphabetImage.c1: false,
      AlphabetImage.g1: true
    }),
    AlphabetQuestionModel(alphabetName: "Ball", question: {
      "Nest": false,
      "Ball": true,
      "Rainbow": false,
      "Kite": false
    }, answer: {
      AlphabetImage.n1: false,
      AlphabetImage.b1: true,
      AlphabetImage.r1: false,
      AlphabetImage.k1: false
    }),
    AlphabetQuestionModel(alphabetName: "Horse", question: {
      "Giraffe": false,
      "Cat": false,
      "Lion": false,
      "Horse": true
    }, answer: {
      AlphabetImage.g1: false,
      AlphabetImage.c1: false,
      AlphabetImage.l1: false,
      AlphabetImage.h1: true
    }),
    AlphabetQuestionModel(alphabetName: "Cat", question: {
      "Giraffe": false,
      "Cat": true,
      "Tiger": false,
      "Dog": false
    }, answer: {
      AlphabetImage.g1: false,
      AlphabetImage.c1: true,
      AlphabetImage.t1: false,
      AlphabetImage.d1: false
    }),
    AlphabetQuestionModel(alphabetName: "Fish", question: {
      "Orange": false,
      "Yacht": false,
      "Nest": false,
      "Fish": true
    }, answer: {
      AlphabetImage.o1: false,
      AlphabetImage.y1: false,
      AlphabetImage.n1: false,
      AlphabetImage.f1: true
    }),
    AlphabetQuestionModel(alphabetName: "Jeep", question: {
      "Jeep": true,
      "Mango": false,
      "Sun": false,
      "Ball": false
    }, answer: {
      AlphabetImage.j1: true,
      AlphabetImage.m1: false,
      AlphabetImage.s1: false,
      AlphabetImage.b1: false
    }),
    AlphabetQuestionModel(alphabetName: "Orange", question: {
      "Apple": false,
      "Orange": true,
      "Mango": false,
      "Elephant": false
    }, answer: {
      AlphabetImage.a1: false,
      AlphabetImage.o1: true,
      AlphabetImage.m1: false,
      AlphabetImage.e1: false
    }),
    AlphabetQuestionModel(alphabetName: "Kite", question: {
      "Elephant": false,
      "Nest": false,
      "Rainbow": false,
      "Kite": true
    }, answer: {
      AlphabetImage.e1: false,
      AlphabetImage.n1: false,
      AlphabetImage.r1: false,
      AlphabetImage.k1: true
    }),
    AlphabetQuestionModel(alphabetName: "Nest", question: {
      "Mango": false,
      "Nest": true,
      "Apple": false,
      "Fish": false
    }, answer: {
      AlphabetImage.m1: false,
      AlphabetImage.n1: true,
      AlphabetImage.a1: false,
      AlphabetImage.f1: false
    }),
    AlphabetQuestionModel(alphabetName: "Rainbow", question: {
      "Rainbow": true,
      "Yacht": false,
      "Sun": false,
      "Lion": false
    }, answer: {
      AlphabetImage.r1: true,
      AlphabetImage.y1: false,
      AlphabetImage.s1: false,
      AlphabetImage.l1: false
    }),
    AlphabetQuestionModel(alphabetName: "Watermelon", question: {
      "Apple": false,
      "Mango": false,
      "Orange": false,
      "Watermelon": true
    }, answer: {
      AlphabetImage.a1: false,
      AlphabetImage.m1: false,
      AlphabetImage.o1: false,
      AlphabetImage.w1: true
    }),
  ];
}

class AlphabetQuestionModel {
  String? alphabetName;
  Map<String, bool>? question;
  Map<String, bool>? answer;

  AlphabetQuestionModel({this.alphabetName, this.question, this.answer});
}

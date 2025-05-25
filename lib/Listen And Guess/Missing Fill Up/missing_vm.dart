
class MissingVM {
  final List<SequenceQuestion> sequenceQuestions = [
    SequenceQuestion(
      sequence: [12, 0, 14],
      options: [11, 13, 18, 20],
      correctAnswer: 13,
    ),
    SequenceQuestion(
      sequence: [0, 13, 14],
      options: [12, 6, 10, 19],
      correctAnswer: 12,
    ),
    SequenceQuestion(
      sequence: [20, 21, 0],
      options: [16, 19, 25, 22],
      correctAnswer: 22,
    ),
  ];
}

class SequenceQuestion {
  final List<int> sequence;
  final List<int> options;
  final int correctAnswer;

  SequenceQuestion({
    required this.sequence,
    required this.options,
    required this.correctAnswer,
  });
}

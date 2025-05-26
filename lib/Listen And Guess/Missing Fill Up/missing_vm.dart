class MissingVM {
  final List<SequenceQuestion> sequenceQuestions = [
    SequenceQuestion(
        sequence: [12, 0, 14], options: [11, 13, 18, 20], correctAnswer: 13),
    SequenceQuestion(
        sequence: [0, 13, 14], options: [12, 6, 10, 19], correctAnswer: 12),
    SequenceQuestion(
        sequence: [20, 21, 0], options: [16, 19, 25, 22], correctAnswer: 22),
    SequenceQuestion(
        sequence: [17, 0, 19], options: [23, 18, 20, 21], correctAnswer: 18),
    SequenceQuestion(
        sequence: [3, 4, 0], options: [8, 0, 5, 7], correctAnswer: 5),
    SequenceQuestion(
        sequence: [0, 24, 25], options: [23, 22, 21, 20], correctAnswer: 23),
    SequenceQuestion(
        sequence: [8, 0, 10], options: [2, 9, 0, 7], correctAnswer: 9),
    SequenceQuestion(
        sequence: [0, 12, 13], options: [31, 41, 21, 11], correctAnswer: 11),
    SequenceQuestion(
        sequence: [27, 0, 29], options: [24, 38, 28, 42], correctAnswer: 28),
    SequenceQuestion(
        sequence: [31, 32, 0], options: [33, 43, 23, 13], correctAnswer: 33),
    SequenceQuestion(
        sequence: [24, 0, 26], options: [0, 27, 28, 25], correctAnswer: 25),
    SequenceQuestion(
        sequence: [0, 41, 42], options: [44, 40, 39, 43], correctAnswer: 40),
    SequenceQuestion(
        sequence: [30, 0, 32], options: [31, 41, 21, 17], correctAnswer: 31),
    SequenceQuestion(
        sequence: [48, 49, 0], options: [47, 30, 50, 40], correctAnswer: 50),
    SequenceQuestion(
        sequence: [0, 15, 16], options: [11, 18, 24, 14], correctAnswer: 14),
    SequenceQuestion(
        sequence: [43, 44, 0], options: [40, 45, 42, 41], correctAnswer: 45),
    SequenceQuestion(
        sequence: [0, 37, 38], options: [33, 30, 35, 36], correctAnswer: 36),
    SequenceQuestion(
        sequence: [22, 0, 24], options: [27, 23, 28, 20], correctAnswer: 23),
    SequenceQuestion(
        sequence: [5, 0, 7], options: [1, 3, 4, 6], correctAnswer: 6),
    SequenceQuestion(
        sequence: [20, 21, 0], options: [23, 22, 24, 25], correctAnswer: 22),
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

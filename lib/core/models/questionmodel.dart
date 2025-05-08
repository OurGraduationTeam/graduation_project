class QuestionModel {
  final String userId;
  final List answer;

  QuestionModel({required this.userId, required this.answer});

  factory QuestionModel.fromJson(Map<String, dynamic> json) {
    return QuestionModel(
      userId: json['userId'] as String,
      answer: json['answer'] as List,
    );
  }
}
 
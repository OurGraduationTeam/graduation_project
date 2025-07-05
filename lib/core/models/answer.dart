import 'package:gradution_project/core/models/GetAssement1.dart';

class Answer {
  final int questionId;
  final int score;

  Answer({required this.questionId, required this.score, required Assement1 answer, required String text, required int domainId});

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'score': score,
      };
}

class SubmitRequest {
  final int domainId;
  final List<Answer> answers;

  SubmitRequest({required this.domainId, required this.answers});

  Map<String, dynamic> toJson() => {
        'domainId': domainId,
        'answers': answers.map((a) => a.toJson()).toList(),
      };
}

class SubmitResponse {
  final String message;
  final int code;

  SubmitResponse({required this.message, required this.code});

  factory SubmitResponse.fromJson(Map<String, dynamic> json) {
    return SubmitResponse(
      message: json['message'] as String,
      code: json['code'] as int,
    );
  }
}

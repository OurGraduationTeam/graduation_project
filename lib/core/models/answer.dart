class Answer {
  final int questionId;
  final int score;

  Answer({
    required this.questionId,
    required this.score,
  });

  Map<String, dynamic> toJson() => {
        'questionId': questionId,
        'score': score,
      };
}

class SubmitRequest {
  final int userId;
  final int? domainId;
  final List<Answer> answers;

  SubmitRequest({required this.userId, this.domainId, required this.answers});

  Map<String, dynamic> toJson() => {
        'userId': userId,
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

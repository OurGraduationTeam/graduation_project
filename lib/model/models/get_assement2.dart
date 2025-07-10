class Assement2 {
  final int id;
  final int score;
  final String description;

  Assement2({
    required this.id,
    required this.score,
    required this.description,
  });

  factory Assement2.fromJson(Map<String, dynamic> json) {
    return Assement2(
      id: json['id'],
      score: json['score'],
      description: json['description'],
    );
  }
}

class Question {
  final int id;
  final String text;
  final int domainId;
  final String domainName;
  final String level;
  final List<Assement2> assement2List;

  Question({
    required this.id,
    required this.text,
    required this.domainId,
    required this.domainName,
    required this.level,
    required this.assement2List,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      text: json['text'],
      domainId: json['domainId'],
      domainName: json['domainName'],
      level: json['level'],
      assement2List: (json['scoringOptions'] as List)
          .map((e) => Assement2.fromJson(e))
          .toList(),
    );
  }
}

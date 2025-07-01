class Assement1 {
  final int id;
  final int score;
  final String description;

  Assement1({
    required this.id,
    required this.score,
    required this.description,
  });

  factory Assement1.fromJson(Map<String, dynamic> json) {
    return Assement1(
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
  final List<Assement1> assement1List;

  Question({
    required this.id,
    required this.text,
    required this.domainId,
    required this.domainName,
    required this.level,
    required this.assement1List,
  });

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      id: json['id'],
      text: json['text'],
      domainId: json['domainId'],
      domainName: json['domainName'],
      level: json['level'],
      assement1List: (json['scoringOptions'] as List)
          .map((e) => Assement1.fromJson(e))
          .toList(),
    );
  }
}

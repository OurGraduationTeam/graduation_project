class PersonalityResultModel {
  final int userId;
  final String personalityType;
  final Map<String, int> traitPercentages;

  PersonalityResultModel({
    required this.userId,
    required this.personalityType,
    required this.traitPercentages,
  });

  factory PersonalityResultModel.fromJson(Map<String, dynamic> json) {
    return PersonalityResultModel(
      userId: json['userId'],
      personalityType: json['personalityType'],
      traitPercentages: Map<String, int>.from(json['traitPercentages']),
    );
  }

  double get extroversionIntroversion =>
      traitPercentages["الانفتاح/الانطوائيه"]?.toDouble() ?? 0.0;
  double get intuitionUnderstanding =>
      traitPercentages["الفهم/الحدس"]?.toDouble() ?? 0.0;
  double get thinkingFeeling =>
      traitPercentages["التفكير/الاحساس"]?.toDouble() ?? 0.0;
  double get judgingPerceiving =>
      traitPercentages["الحكم علي الاشخاص/الإدراك"]?.toDouble() ?? 0.0;
  double get assertiveTurbulent =>
      traitPercentages["حازم/مضطرب"]?.toDouble() ?? 0.0;
}

class DepressionResultModel {
  final int? recommendedLevel2DomainId;
  final String? recommendedLevel2DomainName;
  final String domainName;
  final int score;
  final String potentialDisorder;
  final String recommendation;

  DepressionResultModel({
    this.recommendedLevel2DomainId,
    this.recommendedLevel2DomainName,
    required this.domainName,
    required this.score,
    required this.potentialDisorder,
    required this.recommendation,
  });

  factory DepressionResultModel.fromJson(Map<String, dynamic> json) {
    return DepressionResultModel(
      recommendedLevel2DomainId: json['recommendedLevel2DomainId'],
      recommendedLevel2DomainName: json['recommendedLevel2DomainName'],
      domainName: json['domainName'],
      score: json['score'],
      potentialDisorder: json['potentialDisorder'],
      recommendation: json['recommendation'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recommendedLevel2DomainId': recommendedLevel2DomainId,
      'recommendedLevel2DomainName': recommendedLevel2DomainName,
      'domainName': domainName,
      'score': score,
      'potentialDisorder': potentialDisorder,
      'recommendation': recommendation,
    };
  }
}

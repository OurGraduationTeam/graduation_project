import 'package:gradution_project/core/api/api_keys.dart';

class ErrorModel {
  int? code;
  final String message;

  ErrorModel({
    required this.message,
    required this.code,
  });
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      code: jsonData[ApiKeys.code] ?? 404,
      message: jsonData[ApiKeys.message],
    );
  }
}

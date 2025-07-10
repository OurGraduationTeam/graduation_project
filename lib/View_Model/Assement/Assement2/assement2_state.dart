import 'package:flutter/foundation.dart';
import 'package:gradution_project/model/models/depression_result_model.dart';
import 'package:gradution_project/model/models/get_assement1.dart';

@immutable
sealed class Assement2State {}

final class Assement2Initial extends Assement2State {}

final class Assement2Loading extends Assement2State {}

final class Assement2Success extends Assement2State {
  final List<Question> questions;

  Assement2Success({required this.questions});
}

final class Assement2Failure extends Assement2State {
  final String errorMessage;

  Assement2Failure({required this.errorMessage});
}

final class SendAssement2Success extends Assement2State {
  final DepressionResultModel depressionResultModel;

  SendAssement2Success({required this.depressionResultModel});
}

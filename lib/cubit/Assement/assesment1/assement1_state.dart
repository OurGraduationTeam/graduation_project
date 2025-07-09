part of 'assement1_cubit.dart';

@immutable
sealed class Assement1State {}

final class Assement1Initial extends Assement1State {}

final class Assement1Loading extends Assement1State {}

final class Assement1Success extends Assement1State {
  final List<Question> questions;

  Assement1Success({required this.questions});
}

final class Assement1Failure extends Assement1State {
  final String errorMessage;

  Assement1Failure({required this.errorMessage});
}

final class SendAssement1Loading extends Assement1State {}

final class SendAssement1Success extends Assement1State {
  final DepressionResultModel depressionResultModel;

  SendAssement1Success({required this.depressionResultModel});
}

final class SendAssement1Failure extends Assement1State {
  final String errorMessage;

  SendAssement1Failure({required this.errorMessage});
}

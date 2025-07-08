part of 'assement2_cubit.dart';

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
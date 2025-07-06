part of 'quizez_cubit.dart';

abstract class QuizezState {}

final class QuizezInitial extends QuizezState {}

final class QuizezLoading extends QuizezState {}

final class QuizezSuccess extends QuizezState {
  final PersonalityResultModel personalityResultModel;
  QuizezSuccess({
    required this.personalityResultModel,
  });
}

final class QuizezFailure extends QuizezState {
  final String errorMessage;
  QuizezFailure({required this.errorMessage});
}

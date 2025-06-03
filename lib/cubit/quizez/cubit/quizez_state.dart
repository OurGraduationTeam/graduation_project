part of 'quizez_cubit.dart';

abstract class QuizezState {}

final class QuizezInitial extends QuizezState {}

final class QuizezLoading extends QuizezState {}

final class QuizezSuccess extends QuizezState {
  final List<QuestionModel> quizez;
  QuizezSuccess({required this.quizez});
}

final class QuizezFailure extends QuizezState {
  final String errorMessasag;
  QuizezFailure({required this.errorMessasag});
}

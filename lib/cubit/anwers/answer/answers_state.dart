part of 'answers_cubit.dart';

@immutable
sealed class AnswersState {}

final class AnswersInitial extends AnswersState {}
final class AnswersLoading extends AnswersState {}
final class AnswersSuccess extends AnswersState {
  final String message;

  AnswersSuccess({required this.message});
}
final class AnswersFailure extends AnswersState {
  final String errorMessage;

  AnswersFailure({required this.errorMessage});
}
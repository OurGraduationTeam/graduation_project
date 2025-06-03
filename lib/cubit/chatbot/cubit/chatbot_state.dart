part of 'chatbot_cubit.dart';

@immutable
sealed class ChatbotState {}

final class ChatbotInitial extends ChatbotState {}
final class ChatbotLoading extends ChatbotState {}
final class ChatbotSuccess extends ChatbotState {
 
}
final class ChatbotFailure extends ChatbotState {
  final String errorMessage;
  ChatbotFailure({required this.errorMessage});
}

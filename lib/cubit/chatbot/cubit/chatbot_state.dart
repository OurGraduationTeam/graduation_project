part of 'chatbot_cubit.dart';

sealed class ChatbotState {}

final class ChatbotInitial extends ChatbotState {}

final class ChatbotLoadingState extends ChatbotState {}

final class ChatbotSuccessState extends ChatbotState {
  final String botResponse;

  ChatbotSuccessState({required this.botResponse});
}

final class ChatbotFailureState extends ChatbotState {
  final String errorMessage;
  ChatbotFailureState({required this.errorMessage});
}

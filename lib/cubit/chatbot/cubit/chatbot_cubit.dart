import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/services/get_current_user_id.dart';

part 'chatbot_state.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  ChatbotCubit({required this.api}) : super(ChatbotInitial());
  final ApiConsumer api;

  Future<void> sendMessage({
    required String message,
  }) async {
    try {
      emit(ChatbotLoadingState());

      int? userId = getCurrentUserId();

      final result = await api.post(
        EndPoints.chat,
        data: {
          "userId": userId,
          "userMessage": message,
        },
      );

      emit(ChatbotSuccessState(
        botResponse: result["botResponse"],
      ));
    } on ServerException catch (e) {
      log("there is an error while send message");
      emit(ChatbotFailureState(errorMessage: e.errModel.message));
    }
  }
}

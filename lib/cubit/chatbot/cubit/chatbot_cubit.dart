import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:meta/meta.dart';

part 'chatbot_state.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  ChatbotCubit({ required this.api}) : super(ChatbotInitial());
    final ApiConsumer api;
   sendmessage() async {
    emit(ChatbotLoading());
    try {
      final result = await api.post(
        EndPoints.changepassword,
        data: {
        "userId": 3,
  "userMessage": "hi fouad"
        },
      );
      log(result.toString());
      emit(ChatbotSuccess());
    } on ServerException catch (e) {
      emit(ChatbotFailure( errorMessage: e.errModel.message));
      print(e.toString());
    }
  }
}

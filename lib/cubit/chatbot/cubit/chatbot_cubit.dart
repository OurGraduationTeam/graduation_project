import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/storage/app_storage_helper.dart';
import 'package:gradution_project/core/storage/storage_keys.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'chatbot_state.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  ChatbotCubit({required this.api}) : super(ChatbotInitial());
  final ApiConsumer api;

  Future<void> sendMessage({
    required String message,
  }) async {
    try {
      emit(ChatbotLoadingState());

      int? userId;
      String? accessToken = await AppStorageHelper.getSecureData(
          StorageKeys.accessToken.toString());

      if (accessToken != null) {
        log(accessToken);
        Map<String, dynamic> decodedToken = JwtDecoder.decode(accessToken);
        final id = decodedToken[
            'http://schemas.xmlsoap.org/ws/2005/05/identity/claims/nameidentifier'];

        userId = int.parse(id);
        log(JwtDecoder.isExpired(accessToken).toString());
        log("decoded token: $decodedToken");
      }
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

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/personality_result_model.dart';
import 'package:gradution_project/core/models/questionmodel.dart';
import 'package:gradution_project/core/storage/app_storage_helper.dart';
import 'package:gradution_project/core/storage/storage_keys.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'quizez_state.dart';

class QuizezCubit extends Cubit<QuizezState> {
  QuizezCubit(this.api) : super(QuizezInitial());
  final ApiConsumer api;
  postquizez({
    required List<int> answerNum,
  }) async {
    emit(QuizezLoading());
    try {
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
      log(answerNum.length.toString());
      final result = await api.post(
        EndPoints.question,
        data: {
          "userId": userId,
          "answers": answerNum,
        },
      );

      log("result from submit the answers: ${result.toString()}");
      final PersonalityResultModel personalityResultModel =
          PersonalityResultModel.fromJson(result);

      emit(QuizezSuccess(
        personalityResultModel: personalityResultModel,
      ));
    } on ServerException catch (e) {
      log(e.toString());
      emit(QuizezFailure(errorMessage: e.errModel.message));
    }
  }
}

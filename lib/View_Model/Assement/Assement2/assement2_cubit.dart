import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View_Model/Assement/Assement2/assement2_state.dart';
import 'package:gradution_project/model/models/answer.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/model/models/api/end_points.dart';
import 'package:gradution_project/model/models/depression_result_model.dart';
import 'package:gradution_project/model/models/errors/exceptions.dart';
import 'package:gradution_project/model/models/get_assement1.dart';

class Assement2Cubit extends Cubit<Assement2State> {
  Assement2Cubit({required this.api}) : super(Assement2Initial());
  final ApiConsumer api;

  Future<void> fetchAssement({required int domainId}) async {
    emit(Assement2Loading());

    try {
      final response = await api.get(
        EndPoints.getassement2(domainId),
      );
      late final List<Question> questions;

      if (response is Map<String, dynamic> && response['data'] is List) {
        final list = response['data'] as List;
        questions = list
            .map((e) => Question.fromJson(e as Map<String, dynamic>))
            .toList();
      } else if (response is List) {
        questions = response
            .map((e) => Question.fromJson(e as Map<String, dynamic>))
            .toList();
      } else {
        throw Exception("Unexpected response format");
      }

      emit(Assement2Success(questions: questions));
    } on ServerException catch (e) {
      emit(Assement2Failure(errorMessage: e.errModel.message));
    } catch (e) {
      log("❌ Error: $e");
      emit(Assement2Failure(errorMessage: "خطأ غير متوقع: $e"));
    }
  }

  Future<void> sendAssement2({required SubmitRequest request}) async {
    emit(Assement2Loading());

    try {
      final response = await api.post(
        EndPoints.assement2,
        data: request.toJson(),
      );
      log("send assenment data: $response");
      emit(SendAssement2Success(
        depressionResultModel: DepressionResultModel.fromJson(response),
      ));
    } on ServerException catch (e) {
      emit(Assement2Failure(
        errorMessage: e.errModel.message,
      ));
    }
  }
}

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/GetAssement1.dart';
import 'package:gradution_project/core/models/answer.dart';

part 'assement1_state.dart';

class Assement1Cubit extends Cubit<Assement1State> {
  Assement1Cubit({required this.api}) : super(Assement1Initial());
  final ApiConsumer api;

  Future<void> fetchAssement() async {
    emit(Assement1Loading());

    try {
      final response = await api.get(EndPoints.getassement1);
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

      emit(Assement1Success(questions: questions));
    } on ServerException catch (e) {
      emit(Assement1Failure(errorMessage: e.errModel.message));
    } catch (e) {
      log("❌ Error: $e");
      emit(Assement1Failure(errorMessage: "خطأ غير متوقع: $e"));
    }
  }

  Future<void> sendAssement1({required request}) async {
    emit(Assement1Loading());

    try {
      final response = await api.post(
        EndPoints.assement1,
        data: jsonEncode(request.toJson()),
      );
      emit(Assement1Success(questions: response as List<Question>));
    } on ServerException catch (e) {
      emit(Assement1Failure(
        errorMessage: e.errModel.message,
      ));
    }
  }
}

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/GetAssement1.dart';


part 'assement1_state.dart';

class Assement1Cubit extends Cubit<Assement1State> {
  Assement1Cubit({required this.api}) : super(Assement1Initial());
final ApiConsumer api;



  Future<void> fetchAssement() async {
    emit(Assement1Loading());

    try {
      final response = await api.get(
        EndPoints.getassement1,
      );

      if (response.statusCode == 200) {
        final List<dynamic> data = jsonDecode(response.body);
        final questions = data.map((e) => Question.fromJson(e)).toList();
        log(questions.toString());
        emit(Assement1Success(questions: questions));
        log(response.body.toString());
      

      }
      
    } on ServerException catch (e) {
      emit(Assement1Failure(errorMessage: e.errModel.message));
    }
  }
}



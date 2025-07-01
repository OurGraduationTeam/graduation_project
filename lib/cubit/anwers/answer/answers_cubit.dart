import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:gradution_project/answer.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:meta/meta.dart';

part 'answers_state.dart';

class AnswersCubit extends Cubit<AnswersState> {
  AnswersCubit(this.api) : super(AnswersInitial());
    final ApiConsumer api;

  Future<void> sendAssement1(SubmitRequest request) async {
   emit(AnswersLoading());

    try {
      
      final response = await api.post(
        EndPoints.assement1,
        data: jsonEncode(request.toJson()),
     
    
      );

      if (response.statusCode == 200) {
        emit(AnswersSuccess(
          message: 'Answers submitted successfully',
        ));
      } 
    } on ServerException catch (e) {
      emit(AnswersFailure(
        errorMessage:e.errModel.message  ,
      ));
    }

  }
  Future<void> sendAssement2(SubmitRequest request) async {
    emit(AnswersLoading());

    try {
      final response = await api.post(
        EndPoints.assement2,
        data: jsonEncode(request.toJson()),
      );

      if (response.statusCode == 200) {
        emit(AnswersSuccess(
          message: 'Answers submitted successfully',
        ));
      } 
    } on ServerException catch (e) {
      emit(AnswersFailure(
        errorMessage: e.errModel.message,
      ));
    }
  }
}



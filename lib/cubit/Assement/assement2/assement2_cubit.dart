import 'dart:convert';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/GetAssement1.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:meta/meta.dart';

part 'assement2_state.dart';

class Assement2Cubit extends Cubit<Assement2State> {
  Assement2Cubit(  {required this. api}) : super(Assement2Initial());
  final ApiConsumer api;

  Future<void> fetchAssement({required int domainId}) async {
    emit(Assement2Loading());

    try {
      final response = await api.get(
        EndPoints.getassement2(domainId),
      );
      log("response in cubit2: $response");
      final data = response['data'] as List;
      final List<Question> questions = data
          .map((e) => Question.fromJson(e as Map<String, dynamic>))
          .toList();

      emit(Assement2Success(questions: questions));
    } on ServerException catch (e) {
      emit(Assement2Failure(errorMessage: e.errModel.message));
    }
  }
<<<<<<< HEAD:lib/cubit/Assement/assement2/assement2_cubit.dart
  Future<void> sendAssement2( {required request}) async {
=======

  Future<void> sendAssement2(SubmitRequest request) async {
>>>>>>> 559d68dcbb518cfc4c63c0af24cae82cb3d82ed0:lib/cubit/GetAssement/assement2/assement2_cubit.dart
    emit(Assement2Loading());

    try {
      final response = await api.post(
        EndPoints.assement2,
        data: jsonEncode(request.toJson()),
      );

      emit(Assement2Success(questions: response as List<Question>));
    } on ServerException catch (e) {
      emit(Assement2Failure(
        errorMessage: e.errModel.message,
      ));
    }
  }
}

import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';
import 'package:gradution_project/core/errors/exceptions.dart';
import 'package:gradution_project/core/models/GetAssement1.dart';
import 'package:meta/meta.dart';

part 'assement2_state.dart';

class Assement2Cubit extends Cubit<Assement2State> {
  Assement2Cubit(this.api) : super(Assement2Initial());
  final ApiConsumer api;

  Future<void> fetchAssement({required int domainId}) async {
    emit(Assement2Loading());

    try {
      final response = api.get(
        EndPoints.getassement2(domainId),
      );

      final List<dynamic> data = jsonDecode(await response);
      final questions = data.map((e) => Question.fromJson(e)).toList();
      emit(Assement2Success(questions: questions));
    } on ServerException catch (e) {
      emit(Assement2Failure(errorMessage: e.errModel.message));
    }
  }
}

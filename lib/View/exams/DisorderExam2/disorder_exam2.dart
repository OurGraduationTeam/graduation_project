import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/exams/DisorderExam2/disorder_Exam_Body2.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/model/models/depression_result_model.dart';
import 'package:gradution_project/View/services/setup_get_it.dart';
import 'package:gradution_project/View_Model/Assement/assement2/Assement2_Cubit.dart';

class DisorderExam2 extends StatelessWidget {
  const DisorderExam2({
    super.key,
    required this.depressionResultModel,
  });
  final DepressionResultModel depressionResultModel;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => Assement2Cubit(
            api: getIt<ApiConsumer>(),
          ),
        ),
        BlocProvider(
          create: (context) => Assement2Cubit(
            api: getIt<ApiConsumer>(),
          ),
        ),
      ],
      child: Scaffold(
        backgroundColor: const Color(0Xff36715A),
        body: DisorderExamBody2(
          depressionResultModel: depressionResultModel,
        ),
      ),
    );
  }
}

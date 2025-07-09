import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam2/disorderExamBody2.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/models/depression_result_model.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/Assement/assement2/assement2_cubit.dart';

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

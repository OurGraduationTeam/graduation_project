import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam/disorderExamBody.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/Assement/assesment1/assement1_cubit.dart';

class DisorderExam extends StatefulWidget {
  const DisorderExam({super.key});

  @override
  State<DisorderExam> createState() => _DisorderExamState();
}

class _DisorderExamState extends State<DisorderExam> {
  final int domainId = 1; // Replace with the actual domain ID you want to use
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              Assement1Cubit(api: getIt<ApiConsumer>()),
        ),
        BlocProvider(
          create: (context) => Assement1Cubit(api: getIt<ApiConsumer>())
            // ..sendAssement1(
            //   request: SubmitRequest(
            //     answers: [],
            //     domainId: domainId,
            //   ),
            // ),
        ),
      ],
      child: const Scaffold(
        backgroundColor: Color(0Xff36715A),
        body: Disorderexambody(),
      ),
    );
  }
}

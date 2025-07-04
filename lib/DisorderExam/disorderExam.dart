import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam/disorderExamBody.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/GetAssement/assesment1/assement1_cubit.dart';

class Disorderexam extends StatefulWidget {
  const Disorderexam({super.key});

  @override
  State<Disorderexam> createState() => _DisorderexamState();
}

class _DisorderexamState extends State<Disorderexam> {
  final int domainId = 1; // Replace with the actual domain ID you want to use
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => Assement1Cubit(api: getIt<ApiConsumer>())
            ..fetchAssement(),
        ),
        BlocProvider(create: (context) => Assement1Cubit(api: getIt<ApiConsumer>())..sendAssement1(request: SubmitRequest(answers: [], domainId:domainId ))),
      ],
      child: const Scaffold(
        backgroundColor: Color(0Xff36715A),
        body: Disorderexambody(),
      ),
    );
  }
}

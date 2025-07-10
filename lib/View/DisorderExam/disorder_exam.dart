import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/exams/DisorderExam/Disorder_Exam_Body.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/View/services/setup_get_it.dart';
import 'package:gradution_project/View_Model/Assement/assesment1/Assement1_Cubit.dart';

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
          create: (context) => Assement1Cubit(
            api: getIt<ApiConsumer>(),
          ),
        ),
      ],
      child: const Scaffold(
        backgroundColor: Color(0Xff36715A),
        body: DisorderExamBody(),
      ),
    );
  }
}

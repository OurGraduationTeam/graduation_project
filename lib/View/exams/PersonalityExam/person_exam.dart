import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/exams/PersonalityExam/ques_body.dart';
import 'package:gradution_project/View/widget/constant.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/View/services/setup_get_it.dart';
import 'package:gradution_project/View_Model/quizez/cubit/quizez_cubit.dart';

class Personexam extends StatefulWidget {
  const Personexam({super.key});

  @override
  State<Personexam> createState() => _PersonexamState();
}

class _PersonexamState extends State<Personexam> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizezCubit(
        getIt<ApiConsumer>(),
      ),
      child: const Scaffold(
        backgroundColor: primaryColor,
        body: QuesBody(),
      ),
    );
  }
}

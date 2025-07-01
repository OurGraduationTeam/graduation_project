import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/PersonalityExam/QuesBody.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/quizez/cubit/quizez_cubit.dart';

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
        backgroundColor: Color(0Xff36715A),
        body: Quesbody(),
      ),
    );
  }
}

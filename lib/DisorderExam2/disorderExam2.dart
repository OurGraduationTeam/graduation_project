import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam2/disorderExamBody2.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/Assement/assement2/assement2_cubit.dart';




class Disorderexam2 extends StatefulWidget {
  const Disorderexam2({super.key});

  @override
  State<Disorderexam2> createState() => _Disorderexam2State();
}

class _Disorderexam2State extends State<Disorderexam2> {
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => Assement2Cubit(api:  getIt<ApiConsumer>())..fetchAssement(domainId: 1),
        ),
        BlocProvider(create: (context) => Assement2Cubit(api: getIt<ApiConsumer>())..sendAssement2(request: SubmitRequest(answers: [], domainId: 1))),
      ],
      child: const Scaffold(
        backgroundColor:Color(0Xff36715A), 
        body: Disorderexambody2(),
      ),
    );
  }
}
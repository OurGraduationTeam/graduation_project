import 'package:flutter/material.dart';
import 'package:gradution_project/DisorderExam/disorderExamBody.dart';



class Disorderexam extends StatefulWidget {
  const Disorderexam({super.key});

  @override
  State<Disorderexam> createState() => _DisorderexamState();
}

class _DisorderexamState extends State<Disorderexam> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor:Color(0Xff36715A), 
      body: Disorderexambody(),
    );
  }
}
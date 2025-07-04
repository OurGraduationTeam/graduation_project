import 'package:flutter/material.dart';
import 'package:gradution_project/DisorderExam2/disorderExamBody2.dart';




class Disorderexam2 extends StatefulWidget {
  const Disorderexam2({super.key});

  @override
  State<Disorderexam2> createState() => _Disorderexam2State();
}

class _Disorderexam2State extends State<Disorderexam2> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor:Color(0Xff36715A), 
      body: Disorderexambody2(),
    );
  }
}
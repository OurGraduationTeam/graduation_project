import 'package:flutter/material.dart';
import 'package:gradution_project/QuesBody.dart';

class Personexam extends StatefulWidget {
  const Personexam({super.key});

  @override
  State<Personexam> createState() => _PersonexamState();
}

class _PersonexamState extends State<Personexam> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor:Color(0Xff36715A), 
      body: Quesbody(),
    );
  }
}
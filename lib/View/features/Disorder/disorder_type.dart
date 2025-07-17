import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/disorder_body.dart';
import 'package:gradution_project/View/widget/constant.dart';

class Disorderstype extends StatelessWidget {
  const Disorderstype({super.key});

  @override
  Widget build(BuildContext context) {

    return const Scaffold(
      backgroundColor:primaryColor, 
      body: DisorderBody(),
    );
  }
}
import 'package:flutter/material.dart';

class Patternsstructure extends StatelessWidget {
  const Patternsstructure({super.key, required this.childs});
final List<Widget> childs;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children:childs
         
        ));
  }
}
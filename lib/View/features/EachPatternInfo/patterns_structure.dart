import 'package:flutter/material.dart';

class PatternsStructure extends StatelessWidget {
  const PatternsStructure({super.key, required this.childs});
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
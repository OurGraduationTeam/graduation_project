import 'package:flutter/material.dart';

class Patternsstructure extends StatelessWidget {
  const Patternsstructure({super.key, required this.Childs});
final List<Widget> Childs;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children:Childs
         
        ));
  }
}
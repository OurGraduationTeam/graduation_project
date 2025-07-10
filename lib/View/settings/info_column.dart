import 'package:flutter/material.dart';

class Infocolumn extends StatelessWidget {
  const Infocolumn({super.key, required this.txt1, required this.txt2, });
final String txt1;
final String txt2;
  @override
  Widget build(BuildContext context) {
    return  Padding(padding: const EdgeInsets.all(20),
      child:  Column(
        children: [
          Text( txt1
          ,style: const TextStyle(
            color: Colors.black,fontSize: 30,
            fontWeight: FontWeight.bold
          ),
          textAlign: TextAlign.center,),
          Text(txt2,style: const TextStyle(
            color: Colors.black,fontSize: 22,
          ),
          textAlign: TextAlign.start,),
        ],
      ),
    );
  }
}
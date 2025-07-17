import 'package:flutter/material.dart';
import 'package:gradution_project/View/exams/PersonalityExam/answer.dart';

class QuesButton extends StatelessWidget {
   const QuesButton({super.key, required this.txt,  this.pressed=true, required this.questionId });
final String txt;
final bool pressed;
final  int questionId;
  @override
  Widget build(BuildContext context) {
    
    return  Padding(
      padding: const EdgeInsets.only( bottom: 12),
      child: MaterialButton(
        onPressed: (){
          answers[answers.length-1]=questionId;
         
      },
      
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: pressed?Colors.white:const Color(0xff36715A) , 
                  minWidth: 300,
                  child: Text(txt,style: TextStyle(
                    color: pressed?Colors.black:Colors.white ,
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                  ),
    );
  }
}
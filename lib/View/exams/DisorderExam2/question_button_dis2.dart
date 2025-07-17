import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';

class Questionbuttondis2 extends StatelessWidget {
 const Questionbuttondis2({super.key, required this.txt,  this.pressed=true, required void Function() onTap, required bool isSelected});
final String txt;
final bool pressed;
  @override
  Widget build(BuildContext context) {
    
    return  Padding(
      padding: const EdgeInsets.only( bottom: 12),
      child: MaterialButton(
        onPressed: (){
      },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  color: pressed?secondaryColor:primaryColor , 
                  minWidth: 300,
                  child: Text(txt,style: TextStyle(
                    color: pressed?primaryTextColor:secondaryTextColor ,
                    fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                  
                  ),
    );
  }
}
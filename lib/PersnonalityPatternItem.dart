import 'package:flutter/material.dart';

class PersonalityPatternItem extends StatelessWidget {
  const PersonalityPatternItem({
    super.key,  required this.text, this.isHighlighted = true,
  });

 
  final String text;
  final bool isHighlighted;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(
          color: isHighlighted?  Color(0Xff36715A) : Colors.white 
,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0XffB5B5B5)),
        ),
        height: 25,
        width: 100,
        child:  Center(
          child: Text(
         text,
            style: TextStyle(color: isHighlighted?   Colors.white : Colors.black , fontSize: 15),
          ),
        ),
      ),
    );
  }
}

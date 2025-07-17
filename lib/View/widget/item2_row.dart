import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';

class Item2Row extends StatelessWidget {
  const Item2Row({super.key, required this.firsttext, required this.secondtext, required this.image});
  final String firsttext;
  final String secondtext;
  final String image;
  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width * 0.268,
        height: height * 0.15,
        decoration: BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
             Text(
              firsttext
              ,
              style: const TextStyle(color: primaryTextColor, fontSize: 14),
            ),
            Text(secondtext
              
              ,
                style: const TextStyle(color: primaryTextColor, fontSize: 14))
          ],
        ),
      ),
    );
  }
}

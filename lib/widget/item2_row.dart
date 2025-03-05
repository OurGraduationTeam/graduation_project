import 'package:flutter/material.dart';

class Item2Row extends StatelessWidget {
  const Item2Row({super.key, required this.firsttext, required this.secondtext, required this.image});
  final String firsttext;
  final String secondtext;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 120,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black, width: 1)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
             Text(
              firsttext
              ,
              style: TextStyle(color: Colors.black, fontSize: 14),
            ),
            Text(secondtext
              
              ,
                style: const TextStyle(color: Colors.black, fontSize: 14))
          ],
        ),
      ),
    );
  }
}

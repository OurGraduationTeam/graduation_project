import 'package:flutter/material.dart';

class TabsCloumn extends StatelessWidget {
  const TabsCloumn({
    super.key, required this.text1, required this.text2,
  });
final String text1;
final String text2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text1,
          style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 15, color: Colors.black),
        )
      ],
    );
  }
}

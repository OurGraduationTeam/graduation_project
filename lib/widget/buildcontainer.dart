import 'package:flutter/material.dart';

class Buildcontainar extends StatelessWidget {
  const Buildcontainar({
    super.key, required this.color, required this.image, required this.text,
  });
  final Color color;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 32,right: 32,top: 24),
      decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(36)),
      height: 60,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(image),
            Expanded(
                child: Center(
              child: Text(
                text,
                style:const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

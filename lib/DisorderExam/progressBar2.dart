import 'package:flutter/material.dart';

class Progressbar2 extends StatelessWidget {
  const Progressbar2({super.key, required this.progressvalue, required this.width, required this.height});
final double progressvalue ;
final double width;
final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            width: width*progressvalue,
            height: height,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '${(progressvalue*100).toInt()}%',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
          )

        ],
      ),
    );
  }
}
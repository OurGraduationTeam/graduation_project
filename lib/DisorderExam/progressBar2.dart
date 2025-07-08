import 'package:flutter/material.dart';

class Progressbar2 extends StatelessWidget {
  const Progressbar2({
    super.key,
    required this.progressValue,
    required this.width,
    required this.height,
    this.backgroundColor = const Color(0xFFBDBDBD),
    this.progressColor = Colors.white,
    this.textColor = Colors.black,
    this.borderRadius = 10.0,
    this.duration = const Duration(milliseconds: 300),
  });

  final double progressValue; // لازم تكون بين 0.0 و 1.0
  final double width;
  final double height;
  final Color backgroundColor;
  final Color progressColor;
  final Color textColor;
  final double borderRadius;
  final Duration duration;

  @override
  Widget build(BuildContext context) {
    final clampedProgress = progressValue.clamp(0.0, 1.0);

    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Stack(
        children: [
          AnimatedContainer(
            duration: duration,
            width: width * clampedProgress,
            height: height,
            decoration: BoxDecoration(
              color: progressColor,
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
          Center(
            child: Text(
              '${(clampedProgress * 100).toInt()}%',
              style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

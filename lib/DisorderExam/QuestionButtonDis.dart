import 'package:flutter/material.dart';

class Questionbuttondis extends StatelessWidget {
  const Questionbuttondis({
    super.key,
    required this.txt,
    this.pressed = true,
    this.onPressed,
  });
  final String txt;
  final bool pressed;
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: MaterialButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: pressed ? Colors.white : Color(0xff36715A),
        minWidth: 300,
        child: Text(
          txt,
          style: TextStyle(
            color: pressed ? Colors.black : Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

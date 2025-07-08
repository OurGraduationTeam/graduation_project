import 'package:flutter/material.dart';

class Questionbuttondis extends StatelessWidget {
  const Questionbuttondis({
    super.key,
    required this.txt,
    this.pressed = false,
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
        color: pressed ? const Color(0xff36715A) : Colors.white,
        minWidth: 300,
        child: Text(
          txt,
          style: TextStyle(
            color: pressed ? Colors.white : Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

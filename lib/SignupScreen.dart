import 'package:flutter/material.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
<<<<<<< HEAD
import 'package:gradution_project/cubit/users/users/user_cubit.dart';
import 'package:gradution_project/progress.dart';
=======
import 'package:gradution_project/cubit/cubit/users/user_cubit.dart';
>>>>>>> cd6c6a68d130a219575069f8678c3f651f45eef2
import 'package:gradution_project/widget/Register_item.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Registeritem();
  }

  Widget buildStepCircle(bool isActive, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: isActive ? Color(0Xff4A826C) : Color(0XffD3D3D3),
          child: isActive
              ? const Icon(Icons.check, color: Colors.white, size: 18)
              : null,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

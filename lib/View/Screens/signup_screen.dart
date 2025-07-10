import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/widget/registeritem.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/View/services/setup_get_it.dart';
import 'package:gradution_project/View_Model/users/users/user_cubit.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(api: getIt<ApiConsumer>())..register(),
      child: const Registeritem(),
    );
  }

  Widget buildStepCircle(bool isActive, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor:
              isActive ? const Color(0Xff4A826C) : const Color(0XffD3D3D3),
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

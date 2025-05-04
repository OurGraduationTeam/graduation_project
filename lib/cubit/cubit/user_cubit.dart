import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({required this.api}) : super(UserInitial());
  final ApiConsumer api;

  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  signIn() async {
    try {
      log(emailController.text);
      log(passwordController.text);
      final result = await api.post(
       EndPoints.login,
        data: {
          "email": emailController.text,
          "password": passwordController.text,
        },
      );
      log(result.toString());
      log("Login successful");
      emit(UserSuccess());
    } catch (e) {
      emit(UserFailure(errorMessasage: e.toString()));
      print(e.toString());
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/api/end_points.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api, this.email, this.password) : super(UserInitial());
  final ApiConsumer api;
  final String email;
  final String password;
    final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  signIn() async {
    try {
      emit(UserLoading());
      await api.post(
          EndPoints.login,
          data: {"email": _emailController.text, "password": _passwordController.text});

      emit(UserSuccess());
    } catch (e) {
      emit(UserFailure(errorMessasage: e.toString()));
      print(e.toString());
    }
  }

  
}

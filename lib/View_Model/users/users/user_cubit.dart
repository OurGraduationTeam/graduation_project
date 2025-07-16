import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View_Model/users/users/user_state.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/model/models/api/end_points.dart';
import 'package:gradution_project/model/models/errors/exceptions.dart';
import 'package:gradution_project/View/services/save_current_user_id.dart';
import 'package:gradution_project/model/models/storage/app_storage_helper.dart';
import 'package:gradution_project/model/models/storage/storage_keys.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit({required this.api}) : super(UserInitial());
  final ApiConsumer api;

  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController birthDateController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String gender = "male";

  login({required String email, required String password}) async {
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

      await AppStorageHelper.setSecureData(
          StorageKeys.accessToken.toString(), result["token"]);

      await saveCurrentUserId();
      log(result.toString());
      log("Login successful");
      emit(UserSuccess());
    } on ServerException catch (e) {
      emit(UserFailure(errorMessasage: e.errModel.message));
      log("Login failed: ${e.errModel.message}");
    }
  }

  register() async {
    try {
      log(emailController.text);
      log(passwordController.text);
      final result = await api.post(
        EndPoints.signup,
        data: {
          "email": emailController.text,
          "password": passwordController.text,
          "userName": userNameController.text,
          "age": ageController.text,
          "gender": gender,
        },
      );
      log(result.toString());
      log("Register successful");
      emit(UserSuccess());
    } catch (e) {
      emit(UserFailure(errorMessasage: e.toString()));
      log("Register failed: $e");
    }
  }

  changepassword() async {
    emit(UserLoading());
    try {
      final result = await api.post(
        EndPoints.changepassword,
        data: {
          "email": emailController.text,
          "oldPassword": passwordController.text,
          "newPassword": passwordController.text,
        },
      );
      log(result.toString());
      emit(UserSuccess());
    } on ServerException catch (e) {
      emit(UserFailure(errorMessasage: e.errModel.message));
     log(e.errModel.message);
    }
  }

  changeUserName() async {
    emit(UserLoading());
    try {
      final result = await api.post(
        EndPoints.changeUserName,
        data: {
          "email": emailController.text,
          "userName": userNameController.text,
          "newUserName": "string"
        },
      );
      log(result.toString());
      emit(UserSuccess());
    } on ServerException catch (e) {
      emit(UserFailure(errorMessasage: e.errModel.message));
     log("Change username failed: ${e.errModel.message}");
    }
  }
}

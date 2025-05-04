import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:gradution_project/core/api/api_consumer.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit(this.api) : super(UserInitial());
  final ApiConsumer api;
  signIn() async {
    try {
      emit(UserLoading());
      await api.post(
          'https://mind-map-c9bedgandbh5ejbz.italynorth-01.azurewebsites.net/api/users/Login',
          data: {"email": "email", "password": "password"});

      emit(UserSuccess());
    } catch (e) {
      emit(UserFailure(errorMessasage: e.toString()));
      print(e.toString());
    }
  }

  signUp() async {
    try {
      emit(UserLoading());
      await Dio().post(
         api.baseUrl,
          data: {"email": "email", "password": "password"});

      emit(UserSuccess());
    } catch (e) {
      emit(UserFailure(errorMessasage: e.toString()));
    }
  }
}

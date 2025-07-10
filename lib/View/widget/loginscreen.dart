import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/Screens/Home_Page.dart';
import 'package:gradution_project/View_Model/users/users/user_state.dart';
import 'package:gradution_project/model/models/api/api_consumer.dart';
import 'package:gradution_project/View/services/setup_get_it.dart';
import 'package:gradution_project/View_Model/users/users/user_cubit.dart';
import 'package:gradution_project/View/widget/Login_Screen_Body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(
        api: getIt<ApiConsumer>(),
      ),
      child: const LoginBlocConsumerBody(),
    );
  }
}

class LoginBlocConsumerBody extends StatefulWidget {
  const LoginBlocConsumerBody({super.key});

  @override
  State<LoginBlocConsumerBody> createState() => _LoginBlocConsumerBody1State();
}

class _LoginBlocConsumerBody1State extends State<LoginBlocConsumerBody> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      listener: (context, state) {
        if (state is UserFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.errorMessasage)),
          );
        } else if (state is UserSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Login successful')),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Homepage(),
            ),
          );
        }
      },
      child: LoginScreenBody(
        formKey: _formKey,
        emailController: emailController,
        passwordController: passwordController,
      ),
    );
  }
}

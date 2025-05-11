import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/character/characterpattern.dart';

import 'package:gradution_project/core/api/api_consumer.dart';

import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/core/storage/app_storage_helper.dart';
import 'package:gradution_project/cubit/cubit/users/user_cubit.dart';
import 'package:gradution_project/regist.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  setupGetIt();
  await AppStorageHelper.init();
  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      startLocale: const Locale('ar'),
      path: 'assets/translations',
      fallbackLocale: const Locale('ar'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: BlocProvider(
        create: (context) => UserCubit(api: getIt<ApiConsumer>()),
<<<<<<< HEAD
        child: Characterpattern(),
=======
        child: SignupScreen(),
>>>>>>> f88bdf6b8fc545b5ddfde9aef77449d970598e98
      ),
    );
  }
}

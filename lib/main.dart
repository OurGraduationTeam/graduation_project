import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam/disorderExam.dart';
import 'package:gradution_project/DisorderExam2/disorderExam2.dart';
import 'package:gradution_project/PersonalityExam/PersonExam.dart';
import 'package:gradution_project/chat.dart';
import 'package:gradution_project/core/Screens/splash1.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/core/storage/app_storage_helper.dart';
import 'package:gradution_project/cubit/users/users/user_cubit.dart';
import 'package:gradution_project/login_Screen.dart';
import 'package:gradution_project/personalitypattern.dart';
import 'package:gradution_project/widget/Register_item.dart';

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
      home: const Disorderexam2()
    );
  }
}

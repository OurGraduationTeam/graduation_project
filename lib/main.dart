import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gradution_project/View/DisorderExam/disorder_exam.dart';
import 'package:gradution_project/View/Screens/personality_screen.dart';
import 'package:gradution_project/View/Screens/splash1.dart';
import 'package:gradution_project/View/exams/PersonalityExam/personexam.dart';
import 'package:gradution_project/View/services/setup_get_it.dart';
import 'package:gradution_project/model/models/storage/app_storage_helper.dart';

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
        child: const MyApp()),
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
      home: const Personexam(),
    );
  }
}

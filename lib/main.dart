import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:gradution_project/core/Screens/splash1.dart';
import 'package:gradution_project/loginPAge.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();



  runApp(
    EasyLocalization(
        supportedLocales: const [Locale('en'), Locale('ar')],
        startLocale: const Locale('ar'),
        path:
            'assets/translations', 
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
      home:  RegisterScreen(),
    );
  }
}

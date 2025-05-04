import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:gradution_project/core/Screens/splash1.dart';
<<<<<<< HEAD
import 'package:gradution_project/Authscreen.dart';
=======
import 'package:gradution_project/loginPAge.dart';
>>>>>>> 7646351b3fe249f6f82002d3032eb32d53d9ece2


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

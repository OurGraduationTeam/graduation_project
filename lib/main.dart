import 'package:flutter/material.dart';
import 'package:gradution_project/INTJ.dart';
import 'intro_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      locale: const Locale("ar"),
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const Intj(),
    );
  }
}

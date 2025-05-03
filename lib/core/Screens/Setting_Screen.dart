import 'package:flutter/material.dart';
import 'package:gradution_project/core/settings/setting_screen_body.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:Color(0xff36715A) ,
      body:  SettingsScreenbody(),
    );
  }
}
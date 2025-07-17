import 'package:flutter/material.dart';
import 'package:gradution_project/View/settings/setting_screen_body.dart';
import 'package:gradution_project/View/widget/constant.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body:  SettingsScreenbody(),
    );
  }
}
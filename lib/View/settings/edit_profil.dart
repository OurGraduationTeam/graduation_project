import 'package:flutter/material.dart';
import 'package:gradution_project/View/settings/edit_Profil_Body.dart';
import 'package:gradution_project/View/widget/constant.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: EditProfileBody(),
    );
  }
}

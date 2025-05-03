import 'package:flutter/material.dart';
import 'package:gradution_project/core/settings/Custom_Setting_Background.dart';
import 'package:gradution_project/core/settings/Edit_profil_body.dart';
import 'package:gradution_project/widget/CustomBottomNavigationBar.dart';

class EditProfil extends StatelessWidget {
  const EditProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        backgroundColor: Color(0xff36715A),
        body: 
        EditProfilBody()
        ) ;
  }
   
}




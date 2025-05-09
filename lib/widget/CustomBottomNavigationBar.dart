import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradution_project/core/Screens/Chat_Bot_Screen.dart';
import 'package:gradution_project/core/Screens/Setting_Screen.dart';
import 'package:gradution_project/core/Screens/homepage.dart';
import 'package:gradution_project/core/Screens/personalityscreen.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() => _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      
   
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home,size: 30), label: 'الرئيسية',),
        BottomNavigationBarItem(
            icon: Icon( FontAwesomeIcons.personCircleExclamation,size: 30,), label: 'الأنماط'),
        BottomNavigationBarItem(
          icon: Icon( FontAwesomeIcons.solidComment,size: 30),
          label: "محادثة",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings,size: 30),
          label: "الإعدادات",
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradution_project/chat.dart';
import 'package:gradution_project/core/Screens/Chat_Bot_Screen.dart';
import 'package:gradution_project/core/Screens/Setting_Screen.dart';
import 'package:gradution_project/core/Screens/personalityscreen.dart';
import 'package:gradution_project/widget/homepage_items.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int currentindex = 0;
  List screen = [
    const HomepageItems(),
    const PersonalityTypeScreen(),
    const ChatPage(),
    const SettingScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentindex,
          onTap: (value) {
            setState(() {
              currentindex = value;
            });
          },
          selectedItemColor: const Color(0Xff36715a),
          unselectedItemColor: const Color(0Xffc5c5c5),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسة'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_off_rounded), label: 'الأنماط'),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.solidComment, size: 30),
                label: "محادثة"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "الإعدادات")
          ]),
      body: screen[currentindex],
    );
  }
}

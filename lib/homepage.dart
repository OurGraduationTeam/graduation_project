import 'package:flutter/material.dart';
import 'package:gradution_project/widget/homepage_items.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(selectedItemColor: const Color(0Xff36715a),
        unselectedItemColor: const Color(0Xffc5c5c5),
        
        
        items: const [BottomNavigationBarItem(icon: Icon(Icons.home),label: 'الرئيسة'),
      BottomNavigationBarItem (icon:Icon(Icons.person_off_rounded),label: 'الأنماط')
      
     , BottomNavigationBarItem(icon:  Icon(Icons.chat), label: "محادثة"),
     BottomNavigationBarItem(icon: Icon(Icons.settings), label: "الإعدادات")
      
      ]
      ),body: const HomepageItems(),

    );
  }
}
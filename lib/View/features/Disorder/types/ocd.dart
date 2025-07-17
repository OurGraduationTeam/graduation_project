import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/Dis_Info.dart';

class Ocd extends StatelessWidget {
  const Ocd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0Xff36715A),
      body: DisInfo(
          tx1: "اضطراب الوسواس القهري",
      tx2:"Obsessive-Compulsive Disorder - OCD",
      img: 'assets/images/ocd2.png',
      tx3: "وجود أفكار متكررة (وساوس) وسلوكيات قهرية \nلتخفيف القلق الناتج عنها",
      tx4: "غسل اليدين بشكل مفرط، التحقق المتكرر من الأشياء\n أو ترتيب الأشياء بطريقة معينة",
   
      ),
    );
    
  }
}
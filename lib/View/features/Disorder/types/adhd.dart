import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/Dis_Info.dart';

class Adhd extends StatelessWidget {
  const Adhd({super.key});

  @override
  Widget build(BuildContext context) {
      return const Scaffold(
      backgroundColor:  Color(0Xff36715A),
      body:  DisInfo(
      tx1:"اضطراب فرط الحركة ونقص الانتباه",
      tx2:"Attention-Deficit/Hyperactivity Disorder - ADHD",
      img: 'assets/images/adhd2.png',
      tx3:"اضطراب عصبي يتميز بصعوبة في الانتباه\n فرط النشاط، والاندفاعية",
      tx4:"صعوبة التركيز، التشتت، وفرط الحركة",
           )
          );
     
  
  }
}
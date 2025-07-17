import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/Dis_Info.dart';
import 'package:gradution_project/View/widget/constant.dart';

class Bd extends StatelessWidget {
  const Bd({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: DisInfo(
             tx1:"اضطراب ثنائي القطب",
      tx2:"Bipolar Disorder",
      img: 'assets/images/bd2.png',
      tx3:"اضطراب مزاجي يتميز بتقلبات بين نوبات \nالهوس (فرط النشاط والابتهاج) والاكتئاب",
      tx4:"في نوبات الهوس: زيادة الطاقة، قلة النوم\n :والسلوك المتهور. في نوبات الاكتئاب\n حزن شديد وفقدان الاهتمام",
   
      ),
    );
     
  }
}
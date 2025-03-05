import 'package:flutter/material.dart';
import 'package:gradution_project/Disorder/DisInfo.dart';

class Shizo extends StatelessWidget {
  const Shizo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0Xff36715A),
      body: Disinfo(
         tx1:"الفصام",
      tx2:"Schizophrenia",
      img: 'assets/Schizophrenia2.png',
      tx3:"اضطراب نفسي شديد يتميز باضطرابات\n في التفكير، الإدراك، والسلوك",
      tx4:"هلاوس (سماعية أو بصرية)، أوهام\n تفكير غير منظم، وانخفاض الوظائف اليومية",
 
      ),
    );
     
  
  }
}
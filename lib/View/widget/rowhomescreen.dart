import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/Item1_Row.dart';
import 'package:gradution_project/View/widget/Item2_Row.dart';


class Rowhomescreen extends StatelessWidget {
  const Rowhomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[Item2Row(firsttext: 'نمط', secondtext: 'شخصيتك', image: 'assets/images/OIP2.png') , Item2Row(firsttext: 'الإضطراب الذي', secondtext: 'تعاني منه', image: 'assets/images/OIP1.png'), 
      
      Item1Row()
      ],
    );
  }
}

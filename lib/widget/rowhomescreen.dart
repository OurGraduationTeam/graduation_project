import 'package:flutter/material.dart';
import 'package:gradution_project/widget/item1_row.dart';
import 'package:gradution_project/widget/item2_row.dart';


class Rowhomescreen extends StatelessWidget {
  const Rowhomescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[Item2Row(firsttext: 'نمط', secondtext: 'شخصيتك', image: 'assests/OIP2.png') , Item2Row(firsttext: 'الإضطراب الذي', secondtext: 'تعاني منه', image: 'assests/OIP1.png'), 
      
      Item1Row()
      ],
    );
  }
}

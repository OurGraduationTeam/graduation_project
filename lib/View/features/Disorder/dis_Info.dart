import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/dis_INfo_Body.dart';
import 'package:gradution_project/View/widget/constant.dart';


class DisInfo extends StatelessWidget {
  const DisInfo(
      {super.key,
      required this.tx1,
      required this.tx2,
      required this.tx3,
      required this.tx4,
      required this.img});
  final String tx1;
  final String tx2;
  final String tx3;
  final String tx4;
  final String img;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Column(
      children: [
        Container(
          color: primaryColor,
          padding: const EdgeInsets.only(bottom: 20),
          height: height * 0.26,
          alignment: Alignment.center,
          child: const Text(
            "أنواع الاضطرابات",
            style: TextStyle(
              fontSize: 26,
              color: secondaryTextColor,
            ),
          ),
        ),
        Expanded(
          child: Container(
            width: width,
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              color: secondaryColor,
            ),
            child: DisINfobody(tx1: tx1, tx2: tx2, img: img, tx3: tx3, tx4: tx4),
          ),
        )
      ],
    ));
  }
}

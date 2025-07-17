import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/list_view_disorded%20.dart';


class DisorderBody extends StatelessWidget {
  const DisorderBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Column(
      children: [
        Container(
          color: const Color(0Xff36715A),
          padding: const EdgeInsets.only(bottom: 20),
          height: height*0.26,
          alignment: Alignment.center,
          child: const Text(
            "أنواع الاضطرابات",
            style: TextStyle(
              fontSize: 26,
              color: Colors.white,
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.only(top: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
              color: Colors.white,
            ),
            child: const ListViewDisorded(),
          ),
        )
      ],
    ));
  }
}

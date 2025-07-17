import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';

class ContainerForCharachter extends StatelessWidget {
  const ContainerForCharachter({
    super.key,
    required this.personalityType,
  });

  final String personalityType;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Text(
              'نمط شخصيتك هو',
              style: TextStyle(fontSize: 32, color: Colors.black),
            ),
          ),
          Text(
            personalityType,
            style: const TextStyle(fontSize: 32, color: Color(0Xff4A826C)),
          ),
          Image.asset(
            'assets/Rectangle 3104.png',
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Container(
              width: 320,
              height: 55,
              decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(16)),
              child: const Center(
                  child: Text(
                'اعرف أكثر',
                style: TextStyle(color: secondaryTextColor, fontSize: 16),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

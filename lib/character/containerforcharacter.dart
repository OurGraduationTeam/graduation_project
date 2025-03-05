import 'package:flutter/material.dart';

class Containerforcharachter extends StatelessWidget {
  const Containerforcharachter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.black, width: 1)),
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
          const Text(
            'مهندس',
            style: TextStyle(fontSize: 32, color: Color(0Xff55D4A2)),
          ),
          const Text(
            'INTJ',
            style: TextStyle(fontSize: 32, color: Color(0Xff4A826C)),
          ),
          Image.asset(
            'assests/Rectangle 3104.png',
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Container(
              width: 320,
              height: 55,
              decoration: BoxDecoration(
                  color: const Color(0Xff4A826C),
                  borderRadius: BorderRadius.circular(16)),
              child: const Center(
                  child: Text(
                'اعرف أكثر',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )),
            ),
          ),
        ],
      ),
    );
  }
}

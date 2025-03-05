import 'package:flutter/material.dart';
import 'package:gradution_project/widget/buildcontainer.dart';

class Loginitems extends StatelessWidget {
  const Loginitems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Center(child: Image.asset('assets/image3.png')),
          const SizedBox(
            height: 70,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              'قم بتسجيل الدخول ',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Center(
              child: Buildcontainar(
            color: Color(0Xff36715a),
            text: 'متابعه باستخدام جوجل',
            image: 'assets/icons_google.png',
          )),
          const Center(
            child: Buildcontainar(
                color: Colors.black,
                image: 'assets/iphonelogo.webp',
                text: 'متابعه باستخدام ابل '),
          ),
          const SizedBox(height: 20),
          const Row(
            children: [
              Expanded(child: Divider()),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("أو"),
              ),
              Expanded(child: Divider()),
            ],
          ),
          const SizedBox(height: 10),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text(
                "الدخول كزائر",
                style: TextStyle(
                    color: Color(0Xff36715A),
                    fontSize: 18,
                    decoration: TextDecoration.underline),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

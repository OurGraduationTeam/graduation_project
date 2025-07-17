import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';
import 'package:gradution_project/View/widget/custom_register_step_widget.dart';
import 'package:gradution_project/View/widget/loginscreen.dart';

class Registeritem extends StatelessWidget {
  const Registeritem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              spacing: height * 0.02,
              children: [
                Image.asset(
                  "assets/register.png", 
                  height: height * 0.26, width: width * 0.5,
                ),
                const Text(
                  'انشاء حساب',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const CustomRegisterStepWidget(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("لديك حساب",
                          style: TextStyle(
                              color: primaryTextColor,
                              fontSize: 18,
                              fontWeight: FontWeight.bold)),
                      SizedBox(width: 5),
                      Text(
                        'انضم إلينا',
                        style: TextStyle(
                          color: primaryTextColor,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

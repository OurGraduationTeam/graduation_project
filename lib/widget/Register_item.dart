

import 'package:flutter/material.dart';
import 'package:gradution_project/regist.dart';
import 'package:gradution_project/widget/CustomRegisterStepWidget.dart';

class Registeritem extends StatelessWidget {
  const Registeritem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
              children: [
                
                Image.asset(
                  "assets/register.png", // Replace with your image path
                  height: 250,
                ),
                const SizedBox(height: 20),
    
          
                const Text(
                  'انشاء حساب',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
    
                const CustomRegisterStepWidget(),
                const SizedBox(height: 20),
    
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("لديك حساب",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,fontWeight: FontWeight.bold
                        )),
                    Text(
                      'انضم إلينا',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
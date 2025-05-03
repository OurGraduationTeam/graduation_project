import 'package:flutter/material.dart';
import 'package:gradution_project/core/settings/Custom_Setting_Background.dart';
import 'package:gradution_project/widget/CustomBottomNavigationBar.dart';

class SettingCondition extends StatelessWidget {
  const SettingCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(backgroundColor:const Color(0xff36715A)  ,

    body:  SafeArea(child: Column(
      children: [
            const CustomSettingBackdround(),
            const SizedBox(
              height: 25,
            ),
             Expanded(
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                      BorderRadius.vertical(top: Radius.circular(50))),
                      child: 
                       const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Spacer(),
                                    Center(
                                        child: const Text(
                                      "الشروط والاحكام ",
                                      style: TextStyle(
                                          fontSize: 24, color: Colors.black,fontWeight: FontWeight.bold),
                                    )),
                                    Spacer(),
                                    Icon(Icons.arrow_forward_ios, size: 16)
                                  ],
                                ),
                              ),
                            )
                ])
                      ) 
                      )
                      ,
                        const CustomBottomNavigationBar(),
            ]
    )));
  }
}
import 'package:flutter/material.dart';
import 'package:gradution_project/core/settings/Custom_Setting_Background.dart';
import 'package:gradution_project/widget/CustomBottomNavigationBar.dart';

class EditProfilBody extends StatelessWidget {
  const EditProfilBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
            child: Column(
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
                    child: Expanded(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Spacer(),
                                  Center(
                                      child: Text(
                                    "تعديل الحساب ",
                                    style: TextStyle(
                                        fontSize: 24, color: Colors.black),
                                  )),
                                  Spacer(),
                                  Icon(Icons.arrow_forward_ios, size: 16)
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage:
                                      NetworkImage('https://i.pravatar.cc/300')),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: const Text(
                                  "تعديل الصوره",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: const Color(0xff36715A)),
                                )), SizedBox(height: 15,),
                                const Divider(
                                  height: 15,
                                  thickness: 1,color:Color(0xff36715A) ,
                                ),SizedBox(height: 15,),
                                Card(color: Colors.white,
                  
                    margin: const EdgeInsets.symmetric(vertical: 14),
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        children: [
                          buildProfileRow('الاسم', 'عمرو حسين'),
                          buildProfileRow('اسم المستخدم', 'amr_he'),
                          buildProfileRow('البريد الإلكتروني', 'amrhessen@gmail.com'),
                        ],
                      ),
                    ),
                  ),
                 
                          ]),
                    ))),
                     const CustomBottomNavigationBar()
          ],
        ));
  }
   Widget buildProfileRow(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16,),
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
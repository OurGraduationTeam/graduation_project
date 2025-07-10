import 'package:flutter/material.dart';
import 'package:gradution_project/View/settings/Custom_Setting_Background.dart';
import 'package:gradution_project/View/settings/setting_Person.dart';
import 'package:gradution_project/View/settings/setting_listview.dart';
class SettingsScreenbody extends StatelessWidget {
  const SettingsScreenbody({super.key});

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
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Settingperson(),
                  ),
                  Divider(
                    height: 15,
                    thickness: 1,
                    color: Color(0xff36715A),
                  ),
                  SettingListview(),
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

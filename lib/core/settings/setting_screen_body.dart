import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gradution_project/core/settings/Custom_Setting_Background.dart';
import 'package:gradution_project/core/settings/Setting_Person.dart';
import 'package:gradution_project/core/settings/Setting_listview.dart';
import 'package:gradution_project/widget/CustomBottomNavigationBar.dart';

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

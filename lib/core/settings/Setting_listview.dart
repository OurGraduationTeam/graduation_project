import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class SettingListview extends StatefulWidget {
  const SettingListview({super.key});

  @override
  State<SettingListview> createState() => _SettingListviewState();
}

class _SettingListviewState extends State<SettingListview> {
  bool isArabic = true;
  bool isNotificationsEnabled = true;

  _changeToArabic() async {
    setState(() {
      isArabic = true;
    });
    await context.setLocale(const Locale('ar'));
  }

  _changeToEnglish() async {
    setState(() {
      isArabic = false;
    });
    await context.setLocale(const Locale('en'));
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Text(context.tr("Account Settings"),
              style: const TextStyle(color: Color(0xff36715A), fontSize: 19)),
          const SizedBox(height: 10),
          ListTile(
            title: Text("Edit Profile".tr()),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            title: Text("Language".tr()),
            trailing: ToggleButtons(
              borderRadius: BorderRadius.circular(20),
              selectedColor: Colors.white,
              fillColor: const Color(0xff36715A),
              color: Colors.black,
              isSelected: [isArabic, !isArabic],
              onPressed: (index) {
                setState(() {
                  isArabic = index == 0;
                });
              },
              children: [
                GestureDetector(
                  onTap: _changeToArabic,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text("العربية".tr())),
                ),
                GestureDetector(
                  onTap: _changeToEnglish,
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Text("English".tr())),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(
              "Notification".tr(),
            ),
            trailing: Switch(
              activeTrackColor: const Color(0xff36715A),
              value: isNotificationsEnabled,
              onChanged: (value) {
                setState(() {
                  isNotificationsEnabled = value;
                });
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            height: 15,
            thickness: 1,
            color: Color(0xff36715A),
          ),
          const SizedBox(height: 20),
          Text("More".tr(),
              style: const TextStyle(color: Color(0xff36715A), fontSize: 20)),
          const SizedBox(height: 10),          
          ListTile(
            title: Text("About Us".tr()),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            title: const Text("Privacy Policy"),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            title: Text("Terms and condition".tr()),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            title: Text("Log out".tr(),
                style: const TextStyle(color: Color(0xff36715A), fontSize: 20)),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

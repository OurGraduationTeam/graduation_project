
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomSettingBackdround extends StatelessWidget {
  const CustomSettingBackdround({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: const BoxDecoration(
        color: Color(0xff36715A),
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
      ),
      child:   Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Icon(Icons.settings, color: Colors.white, size: 30),
        Text(
          "Setting".tr(),
          style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold),
        ),
      ],
    ),
    );
  }
}

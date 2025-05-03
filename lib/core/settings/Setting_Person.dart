import 'package:flutter/material.dart';

class Settingperson extends StatelessWidget {
  const Settingperson({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
            radius: 30,
            backgroundImage:
                NetworkImage('https://i.pravatar.cc/300')),
        SizedBox(
          width: 10,
        ),
        Text("Fouad Elozery",
            style: TextStyle(
                fontSize: 22)),
      ],
    );
  }
}

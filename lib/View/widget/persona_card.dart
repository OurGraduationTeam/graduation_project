import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';

class PersonaCard extends StatelessWidget {
  const PersonaCard(
      {super.key,
      required this.imgname,
      required this.tex1,
      required this.tex2,
      required this.nav2});
  final String imgname;
  final String tex1;
  final String tex2;
  final Widget nav2;
  @override
  Widget build(BuildContext context) {
       var height = MediaQuery.of(context).size.height;
    return Card(
      color: secondaryColor,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: height * 0.09,
            child: Image.asset(
              imgname,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            tex1,
            style: const TextStyle(
                fontSize: 18,
                color: primaryColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            tex2,
            style: const TextStyle(
                fontSize: 18,
                color: secondaryTextColor,
                backgroundColor: primaryColor,
                fontWeight: FontWeight.bold),
          ),
          ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return nav2;
                  },
                ),
              );
            },
            title: const Text(
              "معرفة المزيد",
              style: TextStyle(
                  fontSize: 18,
                  color: primaryColor,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

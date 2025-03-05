import 'package:flutter/material.dart';

class Personacard extends StatelessWidget {
  const Personacard(
      {super.key,
      required this.imgname,
      required this.tex1,
      required this.tex2});
  final String imgname;
  final String tex1;
  final String tex2;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 90,
            child: Image.asset(
              imgname,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            tex1,
            style: const TextStyle(
                fontSize: 18,
                color: Color.fromRGBO(54, 113, 90, 1),
                fontWeight: FontWeight.bold),
          ),
          Text(
            tex2,
            style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                backgroundColor: Color.fromRGBO(54, 113, 90, 1)),
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              "معرفة المزيد",
              style: TextStyle(
                  fontSize: 18,
                  color: Color.fromRGBO(54, 113, 90, 1),
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

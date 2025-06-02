import 'package:flutter/material.dart';
import 'package:gradution_project/core/Screens/homepage.dart';

class Buildcontainar extends StatelessWidget {
  const Buildcontainar({
    super.key, required this.color, required this.image, required this.text,
  });
  final Color color;
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){ return const Homepage();}));
      },
      child: Container(
        margin: const EdgeInsets.only(left: 32,right: 32,top: 24),
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(36)),
        height: height * 0.062,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(image),
              Expanded(
                  child: Center(
                child: Text(
                  text,
                  style:const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}

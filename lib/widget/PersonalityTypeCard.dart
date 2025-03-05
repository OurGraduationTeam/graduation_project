import 'package:flutter/material.dart';

class PersonalityTypeCard extends StatelessWidget {
  final String title;
  final String description;
  final bool isHighlighted;

  const PersonalityTypeCard({
    super.key,
    required this.title,
    required this.description,
    this.isHighlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isHighlighted ?  const Color(0Xff36715A) : Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color:  const Color(0Xff36715A)),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            blurRadius: 1,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios_new, color:  isHighlighted ?    Colors.white :const Color(0XFF36715A)  , size: 18),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
                 mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: isHighlighted ? Colors.white :const Color(0XFF36715A) ,   
                  ),     textAlign: TextAlign.right
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 17,
                    color: isHighlighted ? Colors.black: Colors.white ,
                  ),     textAlign: TextAlign.right
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

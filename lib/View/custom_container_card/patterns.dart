
import 'package:flutter/material.dart';

class Patterns extends StatelessWidget {
  const Patterns({super.key, required this.card1, required this.card2, required this.card3, required this.card4});
 final Widget  card1;
  final Widget  card2;
   final Widget  card3;
    final Widget  card4;
  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: const EdgeInsets.all(25),
                    color: Colors.white,
                    child:Column(
                      children: [
                        Row(spacing: 15,
                          children: [
                           Expanded(
                            child: card1
                          ),
                           Expanded(
                            child:card2
                                ),
                          ],
                        ),
                        const SizedBox(height: 20,),
                         Row(spacing: 15,
                          children: [
                          Expanded(
                            child:card3
                                ),
                                 Expanded(
                            child:card4
                                ),
                          ],
                        ),

                      ],
                    ),);
              
  }
}
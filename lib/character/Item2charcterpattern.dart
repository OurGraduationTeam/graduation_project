import 'package:flutter/material.dart';

class Item2characterpattern extends StatelessWidget {
  const Item2characterpattern({
    super.key,
    required this.progress, required this.color,
  });

  final double progress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 12,),
            Align(alignment: Alignment.bottomRight,
              child: Text(
                "%$progress مفتح بنسبة",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Container(
                  height: 8,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth * (progress / 100);
                    return Container(
                      width: width,
                      height: 8,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    );
                  },
                ),
                Positioned(
                  left: (progress / 100) * MediaQuery.of(context).size.width -
                      40, // Adjusting the slider position
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.white,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: color, width: 2),
                      ),
                    ),
                  ),
                ),
              ],
            ),

              const Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                    "انطوائي", // Arabic text (Introvert)
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
              ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Customcard extends StatelessWidget {
  const Customcard({
    super.key,
    required this.titleFirstPart,
    required this.titleSecondPart,
    required this.descriptionFirstPart,
    required this.isHighlighted,
    required this.descriptionSecondPart,
  });
  final String titleFirstPart;
  final String titleSecondPart;
  final String descriptionFirstPart;
  final String descriptionSecondPart;
  final bool isHighlighted;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isHighlighted ? const Color(0Xff36715A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: isHighlighted ? const Color(0Xff36715A) : Colors.white,
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: isHighlighted
                          ? Colors.white
                          : const Color(0Xff36715A),
                      width: 4),
                ),
                child: Center(
                    child: Text(
                  'ابدأ الآن',
                  style: TextStyle(
                      color: isHighlighted ? Colors.white : Colors.black54),
                )),
              ),
            ],
          ),
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                titleFirstPart,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isHighlighted ? Colors.white : Colors.black,
                ),
              ),
              Text(
                titleSecondPart,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: isHighlighted ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                descriptionFirstPart,
                style: TextStyle(
                  fontSize: 16,
                  color: isHighlighted ? Colors.white : Colors.black54,
                ),
              ),
              Text(
                descriptionSecondPart,
                style: TextStyle(
                  fontSize: 16,
                  color: isHighlighted ? Colors.white : Colors.black54,
                ),
              ),
              const SizedBox(height: 10),
              Container(decoration: BoxDecoration(
                 color: isHighlighted ? Colors.white : const Color(0Xff36715A),
                borderRadius: BorderRadius.circular(12)

              ),
                height: 24,
                width: 150,
               
                
                child: Text(
                  '  سؤال 40  في اقل من 10 دقائق ',
                  style: TextStyle(
                      color: isHighlighted ? Colors.black54 : Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

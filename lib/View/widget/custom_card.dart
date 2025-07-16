import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
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
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isHighlighted ? const Color(0Xff36715A) : Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            spacing: height * 0.006,
            crossAxisAlignment: CrossAxisAlignment.start,
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
              Container(
                decoration: BoxDecoration(
                    color:
                        isHighlighted ? Colors.white : const Color(0Xff36715A),
                    borderRadius: BorderRadius.circular(12)),
                height: height * 0.025,
                width: width * 0.33,
                child: Text(
                  '  سؤال 60  في اقل من 10 دقائق ',
                  style: TextStyle(
                      color: isHighlighted ? Colors.black54 : Colors.white),
                ),
              ),
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: width * 0.12,
                height: height * 0.08,
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
                    child: GestureDetector(
                  onTap: () {
                 
                  },
                  child: Text(
                    'ابدأ الآن',
                    style: TextStyle(
                        color: isHighlighted ? Colors.white : Colors.black54),
                  ),
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

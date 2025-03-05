

import 'package:flutter/material.dart';
import 'package:gradution_project/widget/PersonalityTypeCard.dart';

class PersonalityTypeScreenbody extends StatelessWidget {
  const PersonalityTypeScreenbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 130,
            padding: const EdgeInsets.symmetric(vertical: 20),
            alignment: Alignment.center,
            child: const Text(
              'أنواع الشخصيات',
              style: TextStyle(
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: const [
                  SizedBox(
                    height: 155,
                  ),
                  PersonalityTypeCard(
                    title: 'أنماط الشخصية',
                    description:
                        'تعرف اكثر علي العديد من الشخصيات التي تساعدك علي فهم كل شخصية ومعرفة المزايا والعيوب ومعرفة نقاط القوة والضعف والتعمق اكثر',
                    isHighlighted: false,
                  ),
                  SizedBox(height: 50),
                  PersonalityTypeCard(
                    title: 'الاضطرابات الشخصية',
                    description:
                        'تعرف اكثر علي العديد من الشخصيات التي تساعدك علي فهم كل شخصية ومعرفة المزايا والعيوب ومعرفة نقاط القوة والضعف والتعمق اكثر',
                    isHighlighted: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gradution_project/View/features/Disorder/disorder_Type.dart';

import 'package:gradution_project/View/widget/personality_pattern.dart';
import 'package:gradution_project/View/widget/personality_type_card.dart';

class PersonalityTypeScreenbody extends StatelessWidget {
  const PersonalityTypeScreenbody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: height * 0.26,
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
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: ListView(
                
                physics: const BouncingScrollPhysics(),
                children:  [
                  SizedBox(
                    height: height * 0.12,
                  ),
                  const PersonalityTypeCard(
                    title: 'أنماط الشخصية',
                    description:
                        'تعرف اكثر علي العديد من الشخصيات التي تساعدك علي فهم كل شخصية ومعرفة المزايا والعيوب ومعرفة نقاط القوة والضعف والتعمق اكثر',
                    isHighlighted: false,
                    nav: PersonalityPattern(),
                  ),
                   SizedBox(height:height*0.077 ),
                  const PersonalityTypeCard(
                    title: 'الاضطرابات الشخصية',
                    description:
                        'تعرف اكثر علي العديد من الشخصيات التي تساعدك علي فهم كل شخصية ومعرفة المزايا والعيوب ومعرفة نقاط القوة والضعف والتعمق اكثر',
                    isHighlighted: true,
                    nav: Disorderstype(),
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

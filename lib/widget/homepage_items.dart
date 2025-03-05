import 'package:flutter/material.dart';
import 'package:gradution_project/widget/customcard.dart';
import 'package:gradution_project/widget/rowhomescreen.dart';

class HomepageItems extends StatelessWidget {
  const HomepageItems({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 40,
          ),
          Text("أهلاً بك",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          Text("fady ibraheem", style: TextStyle(fontSize: 18)),
          const SizedBox(height: 20),
          Customcard(
            titleFirstPart: 'اختيار',
            titleSecondPart: ' نمط الشخصيه',
            descriptionFirstPart: 'اكتشف الأن شخصيتك الفريد من',
            descriptionSecondPart: ' خلال هذا الاختبار',
           
            isHighlighted: false,
          ),
          Customcard(
              titleFirstPart: 'اختبار ',
              titleSecondPart: 'الأضطرابات النفسية',
              descriptionFirstPart: 'اكتشف الأن اذا كنت تعاني من احدي الاضطربات ',
              isHighlighted: true ,
              descriptionSecondPart: 'النفسية مثل الإكتئاب والقلق المفرط وغيره',
          ), 
          Padding(
            padding: EdgeInsets.only(left: 12,
            top: 12,bottom: 12),
            child: Text('معلومات عنك ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          ),
          Rowhomescreen()
        ],
      ),
    );
  }
}

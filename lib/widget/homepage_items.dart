import 'package:flutter/material.dart';
import 'package:gradution_project/widget/customcard.dart';
import 'package:gradution_project/widget/rowhomescreen.dart';

class HomepageItems extends StatelessWidget {
  const HomepageItems({super.key});

  @override
  Widget build(BuildContext context) {
    var height =MediaQuery.of(context).size.height;
    return  Padding(
      padding: const EdgeInsets.all(16),
      child:SingleChildScrollView(
        child: Column(spacing: height*0.015,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: height*0.035,
            ),
            const Text("أهلاً بك",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const Text("fady ibraheem", style: const TextStyle(fontSize: 18)),
             SizedBox(height: height*0.025),
            const Customcard(
              titleFirstPart: 'اختيار',
              titleSecondPart: ' نمط الشخصيه',
              descriptionFirstPart: 'اكتشف الأن شخصيتك الفريد من',
              descriptionSecondPart: ' خلال هذا الاختبار',
             
              isHighlighted: false,
            ),
            const Customcard(
                titleFirstPart: 'اختبار ',
                titleSecondPart: 'الأضطرابات النفسية',
                descriptionFirstPart: 'اكتشف الأن اذا كنت تعاني من احدي الاضطربات ',
                isHighlighted: true ,
                descriptionSecondPart: 'النفسية مثل الإكتئاب والقلق المفرط وغيره',
            ), 
            const Padding(
              padding: EdgeInsets.only(left: 12,
              top: 12,bottom: 12),
              child: Text('معلومات عنك ',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            ),
            const Rowhomescreen()
          ],
        ),
      ),
    );
  }
}

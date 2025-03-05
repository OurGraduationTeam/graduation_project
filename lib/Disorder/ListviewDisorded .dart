import 'package:flutter/widgets.dart';
import 'package:gradution_project/PersonaCard.dart';

class ListviewDisorded extends StatelessWidget {
  const ListviewDisorded({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: const [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                  child: Personacard(
                      imgname: 'assets/adhd.png',
                      tex1: ' اضطراب فرط الحركه',
                      tex2: 'ADHD')),
              Expanded(
                  child: Personacard(
                      imgname: 'assets/ptsd.png',
                      tex1: 'اضطراب ما بعد الصدمة',
                      tex2: 'PTSD')),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                  child: Personacard(
                      imgname: 'assets/bd.png',
                      tex1: 'اضطراب ثنائي القطب',
                      tex2: 'BD')),
              Expanded(
                  child: Personacard(
                      imgname: 'assets/Schizophrenia.png',
                      tex1: 'الفصام',
                      tex2: 'Schizophrenia')),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            spacing: 15,
            children: [
              Expanded(
                  child: Personacard(
                      imgname: 'assets/ocd.png',
                      tex1: 'اضطراب الوسواس القهري',
                      tex2: 'OCD')),
              Expanded(
                  child: Personacard(
                      imgname: 'assets/gad.png',
                      tex1: 'اضطراب القلق العام ',
                      tex2: 'GAD')),
            ],
          ),
        ),
      ],
    );
  }
}

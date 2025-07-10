import 'package:flutter/material.dart';
import 'package:gradution_project/View/settings/Custom_Setting_Background.dart';
import 'package:gradution_project/View/settings/info_Column.dart';

class SettingWho extends StatelessWidget {
  const SettingWho({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff36715A),
        body: SafeArea(
            child: Column(children: [
          const CustomSettingBackdround(),
          const SizedBox(
            height: 25,
          ),
          Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50))),
                  child: ListView(children: const [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Spacer(),
                            Center(
                                child: Text(
                              "من نحن",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, size: 16)
                          ],
                        ),
                      ),
                    ),
                    Infocolumn(
                        txt1: """من نحن؟""",
                        txt2:
                            """نرحب بكم في [Mind Map]، تطبيق متخصص في تحليل الأنماط الشخصية وزيادة الوعي بالصحة النفسية. نقدم معلومات موثوقة حول الاضطرابات النفسية واختبارات مبسطة لفهم الشخصية، لكننا لسنا بديلاً عن التشخيص الطبي أو العلاج النفسي المحترف.

"""),
                    Infocolumn(
                        txt1: """رسالتنا:""",
                        txt2:
                            """تمكين الأفراد من فهم أنفسهم بشكل أفضل عبر أدوات علمية مبسطة"""),
                    Infocolumn(
                        txt1: """فريقنا:""",
                        txt2:
                            """مجموعة من المطورين وتم الاعتماد على مصادر موثوقة لجمع البيانات"""),
                    Infocolumn(
                        txt1: """تذكير:""",
                        txt2:
                            """المعلومات المقدمة لأغراض تثقيفية فقط، ولا تُعتبر استشارة طبية"""),
                  ]))),
        ])));
  }
}

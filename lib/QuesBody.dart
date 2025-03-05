import 'package:flutter/material.dart';
import 'package:gradution_project/QuesButton.dart';

class Quesbody extends StatefulWidget {
  const Quesbody({super.key});

  @override
  State<Quesbody> createState() => _QuesbodyState();
}

class _QuesbodyState extends State<Quesbody> {
  double slidervalue = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
            color: const Color(0Xff36715A),
            padding: const EdgeInsets.only(bottom: 20),
            height: 160,
            alignment: Alignment.center,
            child: Column(
              children: [
                const Text(
                  'عدد الأسئلة 1 من 40',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                Slider(
                    value: slidervalue,
                    max: 40,
                    divisions: 40,
                    label: slidervalue.round().toString(),
                    thumbColor: Colors.white,
                    activeColor: Colors.grey,
                    onChanged: (val) {
                      setState(() {
                        slidervalue = val;
                      });
                    }),
                const Text(
                  'إختبار نمط الشخصية',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
              ],
            )),
        Expanded(
            child: Container(
          padding: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
          
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                '  هل من الممكن ان تكون صداقات جديدة مع اشخاص لم تعرفهم من قبل ؟',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50,
              ),
              const Quesbutton(
                txt: 'أوافق بقوة',
              ),
              const Quesbutton(
                txt: 'أوافق',
              ),
              const Quesbutton(
                txt: 'إلي حد ما ',
              ),
              const Quesbutton(
                txt: ' أختلف بقوة',
              ),
              const Quesbutton(txt: 'أختلف'),
              const Quesbutton(txt: 'لا أريد الرد'),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      
                        borderRadius: BorderRadius.circular(25)),
                        
                    minWidth: 120,
                    child: const Text(
                      'السابق',
                      style: TextStyle(
                          color: Color(0xff36715A),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: const Color(0xff36715A),
                    minWidth: 120,
                    child: const Text(
                      'التالى',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ))
      ],
    ));
  }
}

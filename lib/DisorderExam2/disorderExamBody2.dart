import 'package:flutter/material.dart';
import 'package:gradution_project/DisorderExam2/QuestionButtonDis2.dart';
import 'package:gradution_project/DisorderExam2/progressBar3.dart';



class Disorderexambody2 extends StatefulWidget {
  const Disorderexambody2({super.key});

  @override
  State<Disorderexambody2> createState() => _Disorderexambody2State();
}

class _Disorderexambody2State extends State<Disorderexambody2> {
  late double percentage = 0.0;
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
                  'عدد الأسئلة 1 من 60',
                  style: TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                Progressbar3(progressvalue: percentage, width: 300, height: 15),
                const Text(
                  'إختبار الإضطرابات ',
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
              const Questionbuttondis2(
                txt: "أبداً",
              ),
              const Questionbuttondis2(
                txt: "نادراً",
              ),
              const Questionbuttondis2(
                txt: "أحياناً",
              ),
              const Questionbuttondis2(txt: "غالباً"),
              const Questionbuttondis2(
                txt:"دائماً",
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (percentage < 1) {
                          percentage += 0.017;
                        } else {
                          percentage = percentage;
                        }
                      });
                    },
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
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        if (percentage != 0) {
                          percentage -= 0.017;
                        } else {
                          percentage = percentage;
                        }
                      });
                    },
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
                ],
              )
            ],
          ),
        ))
      ],
    ));
  }
}
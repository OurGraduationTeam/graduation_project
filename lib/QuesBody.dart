import 'package:flutter/material.dart';
import 'package:gradution_project/ProgressBar.dart';
import 'package:gradution_project/QuesButton.dart';
import 'package:gradution_project/QuestionsList.dart';
import 'package:gradution_project/character/characterpattern.dart';

class Quesbody extends StatefulWidget {
  const Quesbody({super.key});

  @override
  State<Quesbody> createState() => _QuesbodyState();
}

class _QuesbodyState extends State<Quesbody> {
  late double percentage = 0.0;
  late int Page_num=0;
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
                 Text(
                  "عدد الأسئلة ${ Page_num +1} من 60",
                  style: const TextStyle(
                    fontSize: 26,
                    color: Colors.white,
                  ),
                ),
                Progressbar(progressvalue: percentage, width: 300, height: 15),
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
              Questionslist(Ques_num: Page_num, ),
              const SizedBox(
                height: 50,
              ),
              const Quesbutton(
                txt: ' غير موافق بشدة',
              ),
              const Quesbutton(
                txt: 'غير موافق',
              ),
              const Quesbutton(
                txt: 'غير موافق إلى حد ما',
              ),
              const Quesbutton(txt: 'محايد'),
              const Quesbutton(
                txt: 'موافق إلى حد ما',
              ),
              const Quesbutton(txt: ' موافق'),
              const Quesbutton(
                txt: ' موافق بشدة',
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
                        if(Page_num<61){
                            Page_num++;
                           
                        }if(Page_num==60){
                          
                        }
                      });
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    color: const Color(0xff36715A),
                    minWidth: 120,
                    child: Text(
                     Page_num==59? 'إنهاء': 'التالى',
                      style: const TextStyle(
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
                        if(Page_num !=0 ){
                          Page_num--;
                        }else{
                          Page_num=Page_num;
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

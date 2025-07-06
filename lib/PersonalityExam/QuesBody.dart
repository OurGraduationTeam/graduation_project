import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/PersonalityExam/ProgressBar.dart';
import 'package:gradution_project/PersonalityExam/QuesButton.dart';
import 'package:gradution_project/PersonalityExam/QuestionsList.dart';
import 'package:gradution_project/PersonalityExam/answer.dart';
import 'package:gradution_project/character/characterpattern.dart';
import 'package:gradution_project/cubit/quizez/cubit/quizez_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class Quesbody extends StatefulWidget {
  const Quesbody({super.key});

  @override
  State<Quesbody> createState() => _QuesbodyState();
}

class _QuesbodyState extends State<Quesbody> {
  late double percentage = 0.0;
  late int Page_num = 0;
  late QuizezCubit quizezCubit;

  @override
  void initState() {
    super.initState();
    quizezCubit = BlocProvider.of<QuizezCubit>(context);
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return BlocListener<QuizezCubit, QuizezState>(
      listener: (context, state) {
        if (state is QuizezFailure) {
          log("can not submit the answers");
          log(state.errorMessage);
        } else if (state is QuizezSuccess) {
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => CharacterPattern(
                personalityResultModel: state.personalityResultModel,
              ),
            ),
            (route) => false,
          );
        }
      },
      child: BlocBuilder<QuizezCubit, QuizezState>(
        builder: (context, state) => ModalProgressHUD(
          inAsyncCall: state is QuizezLoading,
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  color: const Color(0Xff36715A),
                  padding: const EdgeInsets.only(bottom: 20),
                  height: height * 0.164,
                  alignment: Alignment.center,
                  child: Page_num < 60
                      ? Column(
                          children: [
                            Text(
                              "عدد الأسئلة ${Page_num + 1} من 60",
                              style: const TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                            ),
                            Progressbar(
                                progressvalue: percentage,
                                width: 300,
                                height: 15),
                            const Text(
                              'إختبار نمط الشخصية',
                              style: TextStyle(
                                fontSize: 26,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      : const Center(
                          child: Text(
                            "لقد انتهت الأسئلة",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (Page_num == 60) const Spacer(),
                        Questionslist(
                          Ques_num: Page_num,
                        ),
                        const SizedBox(
                          height: 60,
                        ),
                        Page_num < 60
                            ? const Column(
                                children: [
                                  Quesbutton(
                                    txt: ' غير موافق بشدة',
                                    questionId: 1,
                                  ),
                                  Quesbutton(
                                    txt: 'غير موافق',
                                    questionId: 2,
                                  ),
                                  Quesbutton(
                                    txt: 'غير موافق إلى حد ما',
                                    questionId: 3,
                                  ),
                                  Quesbutton(
                                    txt: 'محايد',
                                    questionId: 4,
                                  ),
                                  Quesbutton(
                                    txt: 'موافق إلى حد ما',
                                    questionId: 5,
                                  ),
                                  Quesbutton(
                                    txt: 'موافق',
                                    questionId: 6,
                                  ),
                                  Quesbutton(
                                    txt: 'موافق بشدة',
                                    questionId: 7,
                                  ),
                                ],
                              )
                            : const SizedBox(), // إخفاء الأزرار

                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MaterialButton(
                              onPressed: () async {
                                if (percentage < 1) {
                                  setState(() {
                                    percentage += 0.017;
                                  });
                                } else {
                                  setState(() {
                                    percentage = percentage;
                                  });
                                }
                                if (Page_num < 60) {
                                  setState(() {
                                    Page_num++;
                                    answers.add(1);
                                    print(answers);
                                  });
                                } else if (Page_num == 60) {
                                  log("post the quiz ");
                                  log("length of the answers list: ${answers.length}");
                                  if (answers.length > 60) {
                                    answers.removeLast();
                                  }

                                  log("length of the answers list: ${answers.length}");
                                  await quizezCubit.postquizez(
                                    answerNum: answers,
                                  );
                                }
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25)),
                              color: const Color(0xff36715A),
                              minWidth: 120,
                              child: Text(
                                Page_num == 60 ? 'إنهاء' : 'التالى',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                  if (Page_num != 0) {
                                    Page_num--;
                                    answers.removeLast();
                                    print(answers);
                                  } else {
                                    Page_num = Page_num;
                                  }
                                });
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                              minWidth: 120,
                              child: const Text(
                                'السابق',
                                style: TextStyle(
                                  color: Color(0xff36715A),
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/character/character_Pattern.dart';
import 'package:gradution_project/View/exams/PersonalityExam/progress_bar.dart';
import 'package:gradution_project/View/exams/PersonalityExam/ques_Button.dart';
import 'package:gradution_project/View/exams/PersonalityExam/questions_List.dart';
import 'package:gradution_project/View/exams/PersonalityExam/answer.dart';
import 'package:gradution_project/View/widget/constant.dart';
import 'package:gradution_project/View_Model/quizez/cubit/quizez_cubit.dart';
import 'package:gradution_project/View_Model/quizez/cubit/quizez_state.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class QuesBody extends StatefulWidget {
  const QuesBody({super.key});

  @override
  State<QuesBody> createState() => _QuesbodyState();
}

class _QuesbodyState extends State<QuesBody> {
  late double percentage = 0.0;
  late int pagenum = 0;
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
                  color: primaryColor,
                  padding: const EdgeInsets.only(bottom: 20),
                  height: height * 0.164,
                  alignment: Alignment.center,
                  child: pagenum < 60
                      ? Column(
                          children: [
                            Text(
                              "عدد الأسئلة ${pagenum + 1} من 60",
                              style: const TextStyle(
                                fontSize: 26,
                                color: secondaryTextColor,
                              ),
                            ),
                            ProgressBar(
                                progressvalue: percentage,
                                width: 300,
                                height: 15),
                            const Text(
                              'إختبار نمط الشخصية',
                              style: TextStyle(
                                fontSize: 26,
                                color:  secondaryTextColor,
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
                              color:  secondaryTextColor,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(top: 10),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50)),
                      color: secondaryColor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        if (pagenum == 60) const Spacer(),
                        Questionslist(
                          quesnum: pagenum,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        pagenum < 60
                            ? const Column(
                                children: [
                                  QuesButton(
                                    txt: ' غير موافق بشدة',
                                    questionId: 1,
                                  ),
                                  QuesButton(
                                    txt: 'غير موافق',
                                    questionId: 2,
                                  ),
                                  QuesButton(
                                    txt: 'غير موافق إلى حد ما',
                                    questionId: 3,
                                  ),
                                  QuesButton(
                                    txt: 'محايد',
                                    questionId: 4,
                                  ),
                                  QuesButton(
                                    txt: 'موافق إلى حد ما',
                                    questionId: 5,
                                  ),
                                  QuesButton(
                                    txt: 'موافق',
                                    questionId: 6,
                                  ),
                                  QuesButton(
                                    txt: 'موافق بشدة',
                                    questionId: 7,
                                  ),
                                ],
                              )
                            : const SizedBox(), 

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
                                if (pagenum < 60) {
                                  setState(() {
                                    pagenum++;
                                    answers.add(1);
                                  });
                                } else if (pagenum == 60) {
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
                              color: primaryColor,
                              minWidth: 120,
                              child: Text(
                                pagenum == 60 ? 'إنهاء' : 'التالى',
                                style: const TextStyle(
                                  color:  secondaryTextColor,
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
                                  if (pagenum != 0) {
                                    pagenum--;
                                    answers.removeLast();
                                  } else {
                                    pagenum = pagenum;
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
                                  color: primaryColor,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
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

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/View/Screens/Home_Page.dart';
import 'package:gradution_project/View/exams/DisorderExam/Progress_Bar2.dart';
import 'package:gradution_project/View/exams/DisorderExam/Question_Button_Dis.dart';
import 'package:gradution_project/View/exams/DisorderExam2/Disorder_Exam2.dart';
import 'package:gradution_project/View_Model/Assement/assesment1/assement1_state.dart';

import 'package:gradution_project/model/models/answer.dart';
import 'package:gradution_project/View/services/get_current_user_id.dart';
import 'package:gradution_project/View_Model/Assement/assesment1/Assement1_Cubit.dart';


class DisorderExamBody extends StatefulWidget {
  const DisorderExamBody({super.key});

  @override
  State<DisorderExamBody> createState() => _DisorderExamBodyState();
}

class _DisorderExamBodyState extends State<DisorderExamBody> {
  int currentIndex = 0;
  List<Answer> selectedAnswers = [];
  int? selectedScore;

  @override
  void initState() {
    super.initState();
    context.read<Assement1Cubit>().fetchAssement();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    log('Height of the screen: $height');
    return SafeArea(
      child: BlocConsumer<Assement1Cubit, Assement1State>(
        listener: (context, state) {
          if (state is SendAssement1Success) {
            if (state.depressionResultModel.domainName != null) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DisorderExam2(
                    depressionResultModel: state.depressionResultModel,
                  ),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homepage()),
              );
            }
          }
        },
        builder: (context, state) {
          log(state.toString());
          if (state is Assement1Loading || state is SendAssement1Loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Assement1Failure) {
            return Center(child: Text(state.errorMessage));
          }

          if (state is SendAssement1Failure) {
            return Center(child: Text(state.errorMessage));
          }

          if (state is Assement1Success) {
            final question = state.questions[currentIndex];
            return Column(
              children: [
                Container(
                  color: const Color(0xff36715A),
                  padding: const EdgeInsets.only(bottom: 20),
                  height: height * 0.2,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'عدد الأسئلة ${currentIndex + 1} من ${state.questions.length} ',
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      ProgressBar2(
                        progressValue:
                            ((currentIndex + 1) / state.questions.length)
                                .clamp(0.0, 1.0),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 15,
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'اختبار الاضطرابات',
                        style: TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.only(top: 20),
                    decoration: const BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(50)),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          question.text,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 5,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.052),
                        ...question.assement2List.map(
                          (opt) => QuestionButtonDis(
                            txt: opt.description,
                            pressed: selectedScore == opt.score,
                            onPressed: () {
                              setState(
                                () {
                                  selectedScore = opt.score;
                                },
                              );
                            },
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.052),
                        MaterialButton(
                          onPressed: () {
                            if (selectedScore != null) {
                              if (currentIndex < state.questions.length - 1) {
                                setState(() {
                                  currentIndex++;
                                });

                                selectedAnswers.add(
                                  Answer(
                                    questionId: question.id,
                                    score: selectedScore!,
                                  ),
                                );

                                selectedScore = null;
                              } else {
                                if (selectedAnswers.length <
                                    state.questions.length) {
                                  selectedAnswers.add(
                                    Answer(
                                      questionId: question.id,
                                      score: selectedScore!,
                                    ),
                                  );
                                }
                                log("answers: $selectedAnswers");
                                log("answers.length: ${selectedAnswers.length}");
                                context.read<Assement1Cubit>().sendAssement1(
                                      request: SubmitRequest(
                                        answers: selectedAnswers,
                                        userId: getCurrentUserId(),
                                      ),
                                    );
                              }
                            }
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          color: selectedScore != null
                              ? const Color(0xff36715A)
                              : Colors.grey,
                          minWidth: 160,
                          height: 50,
                          child: Text(
                            currentIndex < state.questions.length - 1
                                ? 'التالي'
                                : 'انهاء',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            );
          }

          return const Center(child: Text("جارٍ تحميل السؤال..."));
        },
      ),
    );
  }
}

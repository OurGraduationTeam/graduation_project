import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam/QuestionButtonDis.dart';
import 'package:gradution_project/DisorderExam/progressBar2.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:gradution_project/core/models/depression_result_model.dart';
import 'package:gradution_project/cubit/Assement/assement2/assement2_cubit.dart';

class DisorderExamBody2 extends StatefulWidget {
  const DisorderExamBody2({
    super.key,
    required this.depressionResultModel,
  });

  final DepressionResultModel depressionResultModel;
  @override
  State<DisorderExamBody2> createState() => _DisorderExamBody2State();
}

class _DisorderExamBody2State extends State<DisorderExamBody2> {
  int currentIndex = 0;
  List<Answer> selectedAnswers = [];
  int? selectedScore;

  @override
  void initState() {
    super.initState();
    context.read<Assement2Cubit>().fetchAssement(
          domainId: widget.depressionResultModel.recommendedLevel2DomainId ?? 0,
        );
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return SafeArea(
      child: BlocBuilder<Assement2Cubit, Assement2State>(
        builder: (context, state) {
          if (state is Assement2Loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Assement2Failure) {
            return Center(child: Text(state.errorMessage));
          }

          if (state is Assement2Success) {
            final question = state.questions[currentIndex];

            return Column(
              children: [
                // Header with ProgressBar
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
                      const SizedBox(height: 12),
                      ProgressBar2(
                        progressValue:
                            ((currentIndex + 1) / state.questions.length)
                                .clamp(0.0, 1.0),
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 15,
                      ),
                      const SizedBox(height: 30),
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

                // Question Body
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
                        // Question Text
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
                        SizedBox(height: height * 0.052),

                        // Options
                        ...question.assement1List.map(
                          (opt) => QuestionButtonDis(
                            txt: opt.description,
                            pressed: selectedScore == opt.score,
                            onPressed: () {
                              setState(() {
                                selectedScore = opt.score;
                              });
                            },
                          ),
                        ),

                        SizedBox(height: height * 0.052),

                        // Next / Finish Button
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

                                // Send final result
                                // context.read<Assement2Cubit>().sendAssement2(
                                //   request: SubmitRequest(
                                //     domainId: domainId,
                                //     answers: selectedAnswers,
                                //   ),
                                // );
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

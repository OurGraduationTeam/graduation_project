import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/models/answer.dart';
import 'package:gradution_project/cubit/Assement/assesment1/assement1_cubit.dart';

import 'QuestionButtonDis.dart';
import 'progressBar2.dart';

class Disorderexambody extends StatefulWidget {
  const Disorderexambody({super.key});

  @override
  State<Disorderexambody> createState() => _DisorderexambodyState();
}

class _DisorderexambodyState extends State<Disorderexambody> {
  int currentIndex = 1;
  int domainId = 1;
  List<Answer> selectedAnswers = [];
 

  @override
  void initState() {
    super.initState();
    context.read<Assement1Cubit>().fetchAssement();
  }

  @override
  Widget build(BuildContext context) {
     var height= MediaQuery.of(context).size.height;
     log( 'Height of the screen: $height');
    return SafeArea(
      child: BlocBuilder<Assement1Cubit, Assement1State>(
        builder: (context, state) {
          log(state.toString());
          if (state is Assement1Loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is Assement1Failure) {
            return Center(child: Text(state.errorMessage));
          }

          if (state is Assement1Success) {
            final question = state.questions[currentIndex - 1];

            return Column(
              children: [
                // Top Header with Progress Bar
                Container(
                  color: const Color(0xff36715A),
                  padding: const EdgeInsets.only(bottom: 20),
                  height: height * 0.23,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'عدد الأسئلة $currentIndex من 60',
                        style: const TextStyle(
                          fontSize: 26,
                          color: Colors.white,
                        ),
                      ),
                      Progressbar2(
                        progressvalue: currentIndex / 60,
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 15,
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
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.052),

                        ...question.assement1List.map(
                          (opt) => Questionbuttondis(
                            txt: opt.description,
                            onPressed: () {
                              context.read<Assement1Cubit>().fetchAssement();
                              setState(
                                () {
                                  if (selectedAnswers.any((answer) =>
                                      answer.toString() == opt.toString())) {
                                    selectedAnswers.removeWhere((answer) =>
                                        answer.toString() == opt.toString());
                                  } else {
                                    selectedAnswers.add(
                                      Answer(
                                        text: opt.toString(),
                                        questionId: question.id,
                                        score: 0,
                                        domainId: domainId,
                                        answer: opt,
                                      ),
                                    );
                                  }
                                },
                              );
                            },
                          ),
                        ),

                         SizedBox(height: MediaQuery.of(context).size.height * 0.052),

                        // Next Button
                        MaterialButton(
                          onPressed: () {
                            context.read<Assement1Cubit>().fetchAssement();
                            if (currentIndex < 60) {
                              setState(() {
                                currentIndex++;
                              });
                            }
                            context.read<Assement1Cubit>().sendAssement1(
                                  request: SubmitRequest(
                                    domainId: domainId,
                                    answers: selectedAnswers,
                                  ),
                                );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          color: const Color(0xff36715A),
                          minWidth: 160,
                          height: 50,
                          child: const Text(
                            'التالي',
                            style: TextStyle(
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

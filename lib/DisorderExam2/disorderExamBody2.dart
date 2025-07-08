import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/DisorderExam2/QuestionButtonDis2.dart';
import 'package:gradution_project/DisorderExam2/progressBar3.dart';
import 'package:gradution_project/cubit/Assement/assement2/assement2_cubit.dart';

class Disorderexambody2 extends StatefulWidget {
  const Disorderexambody2({super.key});

  @override
  State<Disorderexambody2> createState() => _Disorderexambody2State();
}

class _Disorderexambody2State extends State<Disorderexambody2> {
  late double percentage = 0.0;
  int currentIndex = 0;
  List selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    context.read<Assement2Cubit>().fetchAssement(domainId: 1);
  }

  void selectAnswer(int value) {
    setState(() {
      if (selectedAnswers.length <= currentIndex) {
        selectedAnswers.length = currentIndex + 1;
      }
      selectedAnswers[currentIndex] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocBuilder<Assement2Cubit, Assement2State>(
        builder: (context, state) {
          if (state is Assement2Loading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is Assement2Failure) {
            return Center(child: Text('حدث خطأ: ${state.errorMessage}'));
          } else if (state is Assement2Success) {
            final question = state.questions[currentIndex];

            return Column(
              children: [
                Container(
                  color: const Color(0Xff36715A),
                  padding: const EdgeInsets.only(bottom: 20),
                  height: MediaQuery.of(context).size.height * 0.23,
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        'عدد الأسئلة ${currentIndex + 1} من ${state.questions.length}',
                        style:
                            const TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      Progressbar3(
                          progressvalue: percentage, width: 300, height: 15),
                      const Text(
                        'إختبار الإضطرابات',
                        style: TextStyle(fontSize: 26, color: Colors.white),
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
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.052),
                        ...List.generate(5, (index) {
                          final options = [
                            'أبداً',
                            'نادراً',
                            'أحياناً',
                            'غالباً',
                            'دائماً'
                          ];
                          return Questionbuttondis2(
                            txt: options[index],
                            isSelected: selectedAnswers.length > currentIndex &&
                                selectedAnswers[currentIndex] == index,
                            onTap: () => selectAnswer(index),
                          );
                        }),
                        const SizedBox(height: 100),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            MaterialButton(
                              onPressed: () {
                                setState(() {
                                  if (percentage < 1 &&
                                      currentIndex <
                                          state.questions.length - 1) {
                                    currentIndex++;
                                    percentage += 1 / state.questions.length;
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
                                  if (percentage > 0 && currentIndex > 0) {
                                    currentIndex--;
                                    percentage -= 1 / state.questions.length;
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
                  ),
                )
              ],
            );
          }

          return const SizedBox();
        },
      ),
    );
  }
}

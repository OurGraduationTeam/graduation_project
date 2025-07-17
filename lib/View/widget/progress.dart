import 'package:flutter/material.dart';
import 'package:gradution_project/View/widget/constant.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final int currentStep;

  const ProgressIndicatorWidget({super.key, required this.currentStep});

  final List<String> steps = const [
    'الإيميل',
    'الإسم',
    'كلمة المرور',
    'العمر',
    'النوع',
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(steps.length * 2 - 1, (index) {
          if (index.isEven) {
            int stepIndex = index ~/ 2;
            bool isCompleted = stepIndex < currentStep;
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 40,
                      height: height * 0.041,
                      decoration: BoxDecoration(
                        color: isCompleted
                            ?primaryColor
                            :  Colors.black,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isCompleted
                              ? primaryColor
                              :secondaryColor ,
                          width: 2,
                        ),
                      ),
                    ),
                    if (isCompleted)
                      const Icon(Icons.check, color: secondaryColor, size: 20)
                    else
                      const SizedBox(),
                  ],
                ),
                 SizedBox(height: height * 0.01),
                Text(
                  steps[stepIndex],
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            );
          } else {
            return Expanded(
              child: Container(
                height: 4,
                color: (index ~/ 2) < currentStep - 1
                    ? primaryColor
                    : Colors.grey[400],
              ),
            );
          }
        }),
      ),
    );
  }
}

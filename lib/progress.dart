import 'package:flutter/material.dart';

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
                      height: 40,
                      decoration: BoxDecoration(
                        color: isCompleted
                            ? Colors.green[800]
                            : Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isCompleted
                              ? Colors.green[800]!
                              : Colors.grey[400]!,
                          width: 2,
                        ),
                      ),
                    ),
                    if (isCompleted)
                      const Icon(Icons.check, color: Colors.white, size: 20)
                    else
                      const SizedBox(),
                  ],
                ),
                const SizedBox(height: 8),
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
                    ? Colors.green[800]
                    : Colors.grey[400],
              ),
            );
          }
        }),
      ),
    );
  }
}

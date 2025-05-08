import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: ProgressPage()));
}

class ProgressPage extends StatefulWidget {
  const ProgressPage({super.key});

  @override
  State<ProgressPage> createState() => _ProgressPageState();
}

class _ProgressPageState extends State<ProgressPage> {
  int currentStep = 1;
  final textController = TextEditingController();
  final nameFocusNode = FocusNode();

  final List<String> steps = const [
    'الإيميل',
    'الإسم',
    'كلمة المرور',
    'الميلاد',
    'النوع',
  ];

  String get currentLabel => steps[currentStep - 1];

  String get currentHint {
    switch (currentStep) {
      case 1:
        return 'example@email.com';
      case 2:
        return 'اكتب اسمك هنا';
      case 3:
        return '********';
      case 4:
        return 'YYYY-MM-DD';
      case 5:
        return 'ذكر / أنثى';
      default:
        return '';
    }
  }

  bool get isObscure => currentStep == 3; // hide text at password step

  void onContinue() {
    if (textController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('الرجاء إدخال $currentLabel')),
      );
      return;
    }

    if (currentStep == 1) {
      // Move to the name step
      setState(() {
        currentStep++;
        textController.clear();
        FocusScope.of(context).requestFocus(nameFocusNode); // Focus the name field
      });
    } else if (currentStep < 5) {
      setState(() {
        currentStep++;
        textController.clear();
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('تم الإنتهاء من جميع الخطوات!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('نموذج متعدد الخطوات')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ProgressIndicatorWidget(currentStep: currentStep),
            const SizedBox(height: 32),
            if (currentStep <= 5) ...[
              Align(
                alignment: Alignment.centerRight,
                child: Text('أدخل $currentLabel:', textDirection: TextDirection.rtl),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: textController,
                obscureText: isObscure,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  hintText: currentHint,
                ),
                focusNode: currentStep == 2 ? nameFocusNode : null, // Focus for name field
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: onContinue,
                child: const Text('متابعة'),
              ),
            ] else ...[
              const Text(
                'تم الإنتهاء من جميع الخطوات!',
                textDirection: TextDirection.rtl,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class ProgressIndicatorWidget extends StatelessWidget {
  final int currentStep;

  const ProgressIndicatorWidget({super.key, required this.currentStep});

  final List<String> steps = const [
    'الإيميل',
    'الإسم',
    'كلمة المرور',
    'الميلاد',
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
                        color: isCompleted ? Colors.green[800] : Colors.transparent,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isCompleted ? Colors.green[800]! : Colors.grey[400]!,
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
                color: (index ~/ 2) < currentStep - 1 ? Colors.green[800] : Colors.grey[400],
              ),
            );
          }
        }),
      ),
    );
  }
}

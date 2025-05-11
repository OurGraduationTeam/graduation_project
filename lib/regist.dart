import 'package:flutter/material.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/cubit/users/user_cubit.dart';
import 'package:gradution_project/progress.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      // for RTL support
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.arrow_back, color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Image
                Image.asset(
                  'assets/image 9.png', // Replace with your image path
                  height: 180,
                ),
                const SizedBox(height: 20),

                // Title
                const Text(
                  'انشاء حساب',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                const CustomRegisterStepWidget(),
                const SizedBox(height: 20),

                // Social login
                const Text(
                  'أو سجل باستخدام',
                  style: TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 20),

                // Bottom text
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('ليس لديك حساب؟ '),
                    Text(
                      'انضم إلينا',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildStepCircle(bool isActive, String label) {
    return Column(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: isActive ? Colors.green : Colors.grey[300],
          child: isActive
              ? const Icon(Icons.check, color: Colors.white, size: 16)
              : null,
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

class CustomRegisterStepWidget extends StatefulWidget {
  const CustomRegisterStepWidget({super.key});

  @override
  State<CustomRegisterStepWidget> createState() =>
      _CustomRegisterStepWidgetState();
}

class _CustomRegisterStepWidgetState extends State<CustomRegisterStepWidget> {
  int currentStep = 0;
  final List<String> steps = const [
    'الإيميل',
    'الإسم',
    'كلمة المرور',
    'العمر',
    'النوع',
    'Sign Up'
  ];

  late UserCubit userCubit;
  late List<TextEditingController> stepsControllers;

  @override
  void initState() {
    super.initState();
    userCubit = UserCubit(api: getIt<ApiConsumer>());
    stepsControllers = [
      userCubit.emailController,
      userCubit.userNameController,
      userCubit.passwordController,
      userCubit.ageController,
    ];
  }

  void onContinuePressed() {
    if (currentStep == steps.length - 1) {
      userCubit.register();
    } else {
      setState(() {
        currentStep++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProgressIndicatorWidget(currentStep: currentStep), // Progress indicator

        const SizedBox(height: 30),

        // Email label
        Align(
          alignment: Alignment.centerRight,
          child: Text(
            currentStep >= steps.length ? "" : steps[currentStep],
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 8),

        if (currentStep < stepsControllers.length)
          TextFormField(
            controller: stepsControllers[currentStep],
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        if (currentStep == 4)
          DropdownButtonFormField<String>(
            value: userCubit.gender,
            dropdownColor: Colors.white,
            onChanged: (String? newValue) {
              if (newValue != null) {
                userCubit.gender = newValue;
              }
            },
            items: const [
              DropdownMenuItem<String>(
                value: "male",
                child: Text(
                  "Male",
                ),
              ),
              DropdownMenuItem<String>(
                value: "female",
                child: Text(
                  "Female",
                ),
              ),
            ],
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
            ),
          ),

        const SizedBox(height: 20),

        // Continue button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: onContinuePressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 14),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('متابعة'),
          ),
        ),
      ],
    );
  }
}


import 'package:flutter/material.dart';
import 'package:gradution_project/progress.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/cubit/users/user_cubit.dart';


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
    var height = MediaQuery.of(context).size.height;
    return Column(
spacing: height * 0.02,
      children: [
        ProgressIndicatorWidget(currentStep: currentStep), // Progress indicator

       

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
              fillColor: const Color(0xFFD3D3D3),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            ),
          ),
        const SizedBox(
       
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
              fillColor: const Color(0xFFD3D3D3),
              hintText: 'اختر نوعك',
              hintStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              contentPadding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 16,
              ),
            ),
          ),

     

        // Continue button
        SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ElevatedButton(
              
              onPressed: onContinuePressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0Xff4A826C),
                padding: const EdgeInsets.symmetric(vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
              ),
              child: const Text('متابعة',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
            ),
                    ),
          ),)
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gradution_project/page2.dart';
import 'package:gradution_project/page3.dart';
import 'package:gradution_project/page4.dart';




class AccountCreationFlow extends StatefulWidget {
  const AccountCreationFlow({super.key});

  @override
  State<AccountCreationFlow> createState() => _AccountCreationFlowState();
}

class _AccountCreationFlowState extends State<AccountCreationFlow> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  
  // Form data
  String? email;
  String? name;
  String? birthDate;
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('انشاء حساب'),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(), // Disable swipe
        children: [
          NamePage(
            onNext: (name) {
              this.name = name;
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          EmailPage(
            onNext: (email) {
              this.email = email;
              _pageController.nextPage(
                duration: const Duration(milliseconds: 300),
                curve: Curves.easeIn,
              );
            },
          ),
          GenderPage(
            onNext: (gender) {
              this.gender = gender;
              // Submit form or go to next page
              _submitForm();
            },
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    // Handle form submission
    print({
      'name': name,
      'email': email,
      'birthDate': birthDate,
      'gender': gender,
    });
    
    // Navigate to home or show success
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('تم إنشاء الحساب بنجاح')),
    );
  }
}
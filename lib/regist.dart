import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradution_project/progress.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality( // for RTL support
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.arrow_back, color: Colors.black),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // Image
                Image.asset(
                'assets/image 9.png'  , // Replace with your image path
                  height: 180,
                ),
                SizedBox(height: 20),
            
                // Title
                Text(
                  'انشاء حساب',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
            
                    ProgressIndicatorWidget(currentStep: 1), // Progress indicator
                   
                SizedBox(height: 30),
            
                // Email label
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'الإيميل',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 8),
            
                // Email input
                TextFormField(
                  decoration: InputDecoration(
                    hintText: 'amr@exemple.com',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  ),
                ),
                SizedBox(height: 20),
            
                // Continue button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('متابعة'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
            
                // Social login
                Text(
                  'أو سجل باستخدام',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
            
                // Bottom text
                Row(
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
          child: isActive ? Icon(Icons.check, color: Colors.white, size: 16) : null,
        ),
        SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(fontSize: 12),
        ),
      ],
    );
  }
}

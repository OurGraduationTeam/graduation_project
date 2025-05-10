import 'package:flutter/material.dart';

class GenderPage extends StatefulWidget {
  final Function(String) onNext;
  
  const GenderPage({super.key, required this.onNext});

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
  String? _selectedGender;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'اختر نوعك',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.right,
          ),
          const SizedBox(height: 20),
          RadioListTile<String>(
            title: const Text('ذكر', textAlign: TextAlign.right),
            value: 'male',
            groupValue: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value;
              });
            },
          ),
          RadioListTile<String>(
            title: const Text('أنثى', textAlign: TextAlign.right),
            value: 'female',
            groupValue: _selectedGender,
            onChanged: (value) {
              setState(() {
                _selectedGender = value;
              });
            },
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: _selectedGender == null
                  ? null
                  : () {
                      widget.onNext(_selectedGender!);
                    },
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('متابعة'),
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'متابعة باستخدام',
              style: TextStyle(fontSize: 14),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Image.asset('assets/image 9.png', width: 40),
                onPressed: () {
                  // Handle Google sign in
                },
              ),
              const SizedBox(width: 20),
              const Text(
                'G',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('ليس لديك حساب؟'),
              TextButton(
                onPressed: () {
                  // Navigate to sign up
                },
                child: const Text('انضم إلينا'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
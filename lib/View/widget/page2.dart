import 'package:flutter/material.dart';

class NamePage extends StatefulWidget {
  final Function(String) onNext;
  
  const NamePage({super.key, required this.onNext});

  @override
  State<NamePage> createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(  
          spacing: height * 0.0123,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'الاسم',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.right,
            ),
         
            TextFormField(
              controller: _nameController,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'أدخل اسمك',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'الرجاء إدخال الاسم';
                }
                return null;
              },
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    widget.onNext(_nameController.text);
                  }
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
          
            const Center(
              child: Text(
                'متابعة باستخدام',
                style: TextStyle(fontSize: 14),
              ),
            ),
          
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: width * 0.04,
              children: [
                IconButton(
                  icon: Image.asset('assets/image 9.png', width: width * 0.08),
                  onPressed: () {
                    // Handle Google sign in
                  },
                ),
              
                const Text(
                  'G',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
    
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('ليس لديك حساب؟'),
                TextButton(
                  onPressed: () {
                  
                  },
                  child: const Text('انضم إلينا'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
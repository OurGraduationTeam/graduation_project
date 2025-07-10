import 'package:flutter/material.dart';
import 'package:gradution_project/View/Screens/homepage.dart';
import 'package:gradution_project/model/models/depression_result_model.dart';

class ShowResultExamScreen extends StatelessWidget {
  const ShowResultExamScreen({super.key, required this.depressionResultModel});
  final DepressionResultModel depressionResultModel;

  @override
  Widget build(BuildContext context) {
    const String description = 'قلق مفرط ومستمر بشأن أمور الحياة اليومية.';
    const String symptoms = 'توتر عصبي، صعوبة في النوم، التعب، وصعوبة التركيز.';

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'نتيجة اختبار الاضطرابات',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'أنت تعاني من هذا الاضطراب بدرجة',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text(
                'متوسطة',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 50),
              ShowExam1Result(
                description: description,
                symptoms: symptoms,
              ),
              SizedBox(
                height: 20,
              ),
              GoToHomePageButton(),
            ],
          ),
        ),
      ),
    );
  }
}

class ShowExam1Result extends StatelessWidget {
  const ShowExam1Result({
    super.key,
    required this.description,
    required this.symptoms,
  });

  final String description;
  final String symptoms;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: Colors.grey,
          width: 0.3,
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 32,
        ),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'اضطراب القلق العام',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'الوصف',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'الأعراض',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              symptoms,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 20),
            const SizedBox(height: 12),
            const Center(
              child: Text(
                'يرجى التوجه الى طبيب أو مختص نفسي',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoToHomePageButton extends StatelessWidget {
  const GoToHomePageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const Homepage();
            },
          ),
        );
      },
      child: Container(
        alignment: Alignment.center,
        width: 270,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
        ),
        child: const Center(
          child: Text(
            'go to home page',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

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
          style: TextStyle(fontWeight: FontWeight.bold,color:   Color(0Xff36715A)),
        ),
        centerTitle: true,
      ),
      body:  Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            spacing: 7,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
              'نتيجة اختبار الاضطرابات هي', 
                style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text(
                ( depressionResultModel.score).toString(),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 50),
              const ShowExam1Result(
                description: description,
                symptoms: symptoms,
              ),
              const SizedBox(
                height: 20,
              ),
              const GoToHomePageButton(),
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
    required this.symptoms, this.depressionResultModel,
  });
final DepressionResultModel? depressionResultModel;
  final String description;
  final String symptoms;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color.fromRGBO(54, 113, 90, 2),
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
             Center(
              child: Text(
                depressionResultModel!.domainName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0Xff36715A)
                ),
              ),
            ),
            const SizedBox(height: 20),
                 Center(
              child: Text(
                depressionResultModel?.potentialDisorder ?? 'لا يوجد اضطراب محتمل',
                style: const TextStyle(
                  fontSize: 18,
                  color:Color(0Xff36715A) ,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
             Center(
              child: Text(
                depressionResultModel?.recommendation ?? 'لا توجد توصيات'   ,
                style: const TextStyle(
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
            
            Text(
              symptoms,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),
          ]
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

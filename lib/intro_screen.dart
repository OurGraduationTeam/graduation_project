import 'package:flutter/material.dart';
import 'package:gradution_project/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroScreen extends StatelessWidget {
 IntroScreen({super.key});
  final List<PageViewModel> pages =[
  
     PageViewModel(
      
      title: "اهلا ومرحباً بك \nMind Map في",
      body: " هل انت مهتم بشأن شخصيتك وكيف تؤثر علي سلوكك وقراراتك ومعرفة الكثير عنها ؟؟",
      decoration: const PageDecoration(
    
          titleTextStyle:
              TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
      image: Center(
        child: Image.asset('assets/1.png'),
      ),
    ),
    PageViewModel(
      title: "ما هو\nMind Map",
      body:"يتيح لك التعرف علي نمط شخصيتك ونقاط القوة والضعف والتعرف علي اذا كنت تعاني من احد الاضطرابات النفسية مثل  الاكتئاب والقلق المفرط والوسواس القهري , إلخ",
      decoration: const PageDecoration(
     
          titleTextStyle:
              TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              
      image: Center(
        child: Image.asset('assets/2.png'),
      ),
    ),
    PageViewModel(
       image: Center(
        child: Image.asset('assets/3.png'),
      ),
      title: "استكشف\nMind Map",
      body: "  Mind Map قم بتسجيل الدخول الأن لإستكشاف \nو التعرف على نمط شخصيتك الان",
      decoration: const PageDecoration(
    
          titleTextStyle:
              TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
     
    )
  ];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor:const Color.fromRGBO(255, 255, 255, 1) ,
      ),
      body: IntroductionScreen(
        pages: pages,
        globalBackgroundColor:const Color.fromRGBO(255, 255, 255, 1) , 
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Color.fromRGBO(217, 217, 217, 1) ,
          activeSize: Size.square(20),
          activeColor:Color.fromRGBO(54, 113, 90, 1) ,
         
        ),
        showDoneButton: true,
        done:MaterialButton(onPressed: (){
          Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen() ));
        },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color:const Color.fromRGBO(54, 113, 90, 1) , 
        child: const Text('التالي',style: TextStyle(color:Color.fromRGBO(255, 255, 255, 1),fontWeight: FontWeight.bold ,fontSize: 18 ),),),
        showSkipButton: true,
        skip: const Text(
          "تخطي",
          style: TextStyle(fontSize: 20,color:Color.fromRGBO(54, 113, 90, 1) ),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          color: Color.fromRGBO(54, 113, 90, 1),
          size: 28,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
        
      ),
    );
  }
  void onDone(context) {
    
  }

   
  }

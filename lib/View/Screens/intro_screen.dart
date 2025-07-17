import 'package:flutter/material.dart';
import 'package:gradution_project/View/Screens/signup_screen.dart';
import 'package:gradution_project/View/widget/constant.dart';
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
        child: Image.asset('assets/images/1.png'),
      ),
    ),
    PageViewModel(
      title: "ما هو\nMind Map",
      body:"يتيح لك التعرف علي نمط شخصيتك ونقاط القوة والضعف والتعرف علي اذا كنت تعاني من احد الاضطرابات النفسية مثل  الاكتئاب والقلق المفرط والوسواس القهري , إلخ",
      decoration: const PageDecoration(
     
          titleTextStyle:
              TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
              
      image: Center(
        child: Image.asset('assets/images/2.png'),
      ),
    ),
    PageViewModel(
       image: Center(
        child: Image.asset('assets/images/3.png'),
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
        backgroundColor:secondaryColor ,
      ),
      body: IntroductionScreen(
        pages: pages,
        globalBackgroundColor:secondaryColor , 
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Color.fromRGBO(217, 217, 217, 1) ,
          activeSize: Size.square(20),
          activeColor:primaryColor ,
         
        ),
        showDoneButton: true,
        done:MaterialButton(onPressed: (){
          Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SignupScreen() ));
        },shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color:primaryColor , 
        child: const Text('التالي',style: TextStyle(color:secondaryTextColor,fontWeight: FontWeight.bold ,fontSize: 18 ),),),
        showSkipButton: true,
        skip: const Text(
          "تخطي",
          style: TextStyle(fontSize: 20,color:primaryColor, fontWeight: FontWeight.bold),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          color:primaryColor,
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


import 'package:flutter/material.dart';
import 'package:gradution_project/chatbot/Chat_Bubble.dart';

class ChatBotScreenBody extends StatelessWidget {
  const ChatBotScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: Center(
                  child: Text(
                    'Today, 04:12 pm',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              ChatBubble(
                text: 'مرحبا',
                isSender: false,
              ),
              ChatBubble(
                text: 'أهلا',
                isSender: true,
                avatar: true,
              ),
              ChatBubble(
                text: 'كيف يمكنني مساعدتك؟',
                isSender: false,
              ),
              ChatBubble(
                text: 'أشعر بالحزن الشديد',
                isSender: true,
                avatar: true,
              ),
              ChatBubble(
                text:
                    '''وظيفة الحزن هي أن يخبرك أنك فقدت شيئاً ما لكن أيضاً بمساعدتك على احترام وتقدير كل الأمور الجيدة الباقية لك. كما أن الحزن يعد تقنية وآلية من آليات المواجهة والتغلب والتي تساعدك في الحصول على الدعم المجتمعي من العائلة والأصدقاء. تذكر أن الشخص عندما يكون حزيناً يعود عادةً الأطفال والأصدقاء حيث هو الدعم والتشجيع. كما أن الحزن يساعدك على إعادة تقييم أهدافك ومعنى في الحياة وهذا يؤدي إلى الاستمتاع بحياة أكثر متعة ووجدان.''',
                isSender: false,
                isLong: false,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'اكتب هنا',
                  suffixIcon: const Icon(Icons.send),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
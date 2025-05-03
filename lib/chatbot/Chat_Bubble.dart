
import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool avatar;
  final bool isLong;
  const ChatBubble({
    super.key,
    required this.text,
    required this.isSender,
    this.avatar = false,
    this.isLong = false,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSender ? Alignment.centerLeft : Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            if (!isSender)
              const CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage('assets/chatbotim.png')),
            if (!isSender) const SizedBox(width: 7),
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSender ? Colors.white : Colors.black38),
                  color: isSender ? const Color(0xff205D55) : Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  text,
                  style: TextStyle(
                    color: isSender ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            if (isSender && avatar)
              const CircleAvatar(
                radius: 16,
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
            if (isSender && avatar)
              const SizedBox(
                width: 7,
              )
          ],
        ),
      ),
    );
  }
}
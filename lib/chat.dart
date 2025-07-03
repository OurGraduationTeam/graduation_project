import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gradution_project/core/api/api_consumer.dart';
import 'package:gradution_project/core/services/setup_get_it.dart';
import 'package:gradution_project/cubit/chatbot/cubit/chatbot_cubit.dart';
import 'package:intl/intl.dart'; // For formatting time

// Message model with text, avatar, and timestamp
class ChatMessage {
  final String text;
  final String avatarUrl;
  final DateTime timestamp;
  final bool isSendByMe;

  ChatMessage({
    required this.text,
    required this.avatarUrl,
    required this.timestamp,
    required this.isSendByMe,
  });
}

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChatbotCubit(
        api: getIt<ApiConsumer>(),
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text("Chat "),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: const ChatBotBlocConsumerBody(),
      ),
    );
  }
}

class ChatBotBlocConsumerBody extends StatefulWidget {
  const ChatBotBlocConsumerBody({super.key});

  @override
  State<ChatBotBlocConsumerBody> createState() =>
      _ChatBotBlocConsumerBodyState();
}

class _ChatBotBlocConsumerBodyState extends State<ChatBotBlocConsumerBody> {
  final List<ChatMessage> _messages = [];
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final String userAvatar = "https://i.pravatar.cc/300"; // Avatar URL

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _messages.add(ChatMessage(
          text: text,
          avatarUrl: userAvatar,
          timestamp: DateTime.now(),
          isSendByMe: true,
        ));
      });
      _controller.clear();
      Future.delayed(const Duration(milliseconds: 100), () {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      });

      BlocProvider.of<ChatbotCubit>(context).sendMessage(
        message: text,
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  Widget buildMessage(ChatMessage message) {
    final timeString = DateFormat('hh:mm a').format(message.timestamp);

    final bool isSendByMe = message.isSendByMe;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        mainAxisAlignment:
            isSendByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isSendByMe) ...[
            CircleAvatar(
              backgroundImage: AssetImage(message.avatarUrl),
            ),
            const SizedBox(width: 10),
          ],
          Flexible(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color:
                    isSendByMe ?   const Color.fromRGBO(54, 113, 90, 1):Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: const Radius.circular(12),
                  topRight: const Radius.circular(12),
                  bottomLeft: Radius.circular(isSendByMe ? 12 : 0),
                  bottomRight: Radius.circular(isSendByMe ? 0 : 12),
                ),
              ),
              child: Column(
                crossAxisAlignment: isSendByMe
                    ? CrossAxisAlignment.end
                    : CrossAxisAlignment.start,
                children: [
                  Text(
                    message.text,
                    style: const TextStyle(fontSize: 16,color: Colors.white),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    timeString,
                    style: const TextStyle(fontSize: 11, color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (isSendByMe) ...[
            const SizedBox(width: 10),
            CircleAvatar(
              backgroundImage: NetworkImage(message.avatarUrl),
            ),
          ]
        ],
      ),
    );
  }

  Widget buildLoadingMessage(bool  isSendByMe) {
      
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const CircleAvatar(
            backgroundImage: AssetImage("assets/chatbot.png"),
          ),
          const SizedBox(width: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration:BoxDecoration(
              color:    isSendByMe ?   const Color.fromRGBO(54, 113, 90, 1):Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius:  const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomRight: Radius.circular(12),
              ),
            ),
            child: const Text(
              "لحظة من فضلك، أجهز الإجابة...",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ChatbotCubit, ChatbotState>(
      listener: (context, state) {
        if (state is ChatbotSuccessState) {
          ChatMessage chatResponseMessage = ChatMessage(
            text: state.botResponse,
            avatarUrl: "assets/chatbot.png",
            timestamp: DateTime.now(),
            isSendByMe: false,
          );

          _messages.add(chatResponseMessage);
        }
      },
      builder: (context, state) => Column(
        children: [
          const SizedBox(height: 25),
          Expanded(
            child: ListView.separated(
              controller: _scrollController,
              separatorBuilder: (context, index) => const SizedBox(
                height: 18,
              ),
              itemCount: state is ChatbotLoadingState
                  ? _messages.length + 1
                  : _messages.length,
              itemBuilder: (_, index) {
                if (index < _messages.length) {
                  return buildMessage(_messages[index]);
                } else {
                  return buildLoadingMessage(false);
                }
              },
            ),
          ),
          const Divider(height: 1),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (_) => _sendMessage(),
                    decoration: const InputDecoration(
                      hintText: "Type a message...",
                      
                      border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  onPressed: _sendMessage,
                  icon: const Icon(Icons.send),
                  color:const Color.fromRGBO(54, 113, 90, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat/view/widgets/my_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: ((context, index) {
        return const MyMessageCard();
      }),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat/view/widgets/chat_list.dart';
import 'package:whatsapp_clone/info.dart';
import 'package:whatsapp_clone/utilities/colors.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[1]["name"]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Column(
        children: [
          const Expanded(
            child: ChatList(),
          ),
          TextField(
            decoration: InputDecoration(
              prefixIcon: const Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.emoji_emotions,
                ),
              ),
              suffixIcon: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.attach_file, color: greyColor),
                    Icon(Icons.currency_rupee, color: greyColor),
                    Icon(Icons.camera_alt, color: greyColor),
                  ],
                ),
              ),
              hintText: "Message",
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                borderRadius: BorderRadius.circular(10),
              ),
              contentPadding: const EdgeInsets.all(10),
            ),
          ),
        ],
      ),
    );
  }
}

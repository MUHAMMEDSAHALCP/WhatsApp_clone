import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat/view/mobile_chat_view.dart';
import 'package:whatsapp_clone/info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return Column(
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MobileChatScreen(),
                    ),
                  );
                },
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      info[index]["image"].toString(),
                    ),
                  ),
                  title: Text(
                    info[index]["name"],
                  ),
                  subtitle: Text(
                    info[index]["message"],
                  ),
                ),
              ),
            ],
          );
        }),
        itemCount: info.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/home/view/widgets/contacts_list.dart';
import 'package:whatsapp_clone/utilities/colors.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          centerTitle: false,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              color: greyColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
              ),
            ),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                text: "CHATS",
              ),
              Tab(
                text: "STATUS",
              ),
              Tab(
                text: "CALLS",
              ),
            ],
          ),
        ),
        body: const ContactList(),
      ),
    );
  }
}

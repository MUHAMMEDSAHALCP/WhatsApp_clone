import 'package:flutter/material.dart';
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
          actions: const [
          

          ],
        ),
      ),
    );
  }
}

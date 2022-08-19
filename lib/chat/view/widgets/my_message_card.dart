import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/colors.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.width - 3,
      ),
      child: Card(
        color: messageColor,
        child: Stack(
          children: const [
            Padding(
              padding: EdgeInsets.only(
                left: 10,
                bottom: 20,
                right: 30,
                top: 5,
              ),
              child: Text("Hey  message"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/colors.dart';
import 'package:whatsapp_clone/utilities/constant.dart';

class MyMessageCard extends StatelessWidget {
  const MyMessageCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.width - 45,
        ),
        child: Card(
          elevation: 1,
          color: messageColor,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Stack(
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 10,
                  bottom: 30,
                  right: 30,
                  top: 10,
                ),
                child: Text(
                  "Hey, I Hope you are doing great!",
                  style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                ),
              ),
              Positioned(
                bottom: 4,
                right: 10,
                child: Row(
                  children: const [
                    Text(
                      "11:30",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 13,
                      ),
                    ),
                    sizedBoxWidth10,
                    Icon(
                      Icons.done_all,
                      color: textColor,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

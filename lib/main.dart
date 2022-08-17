import 'package:flutter/material.dart';
import 'package:whatsapp_clone/utilities/responsive_layout.dart';
import 'package:whatsapp_clone/view/mobile_layout_view.dart';
import 'package:whatsapp_clone/view/web_layout_view.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ResponsiveLayout(
        mobileScreenLayout: MobileLayoutView(),
        webScreenLayout: WebLayoutView(),
      ),
    );
  }
}

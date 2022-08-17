import 'package:flutter/material.dart';

class MobileLayoutView extends StatelessWidget {
  const MobileLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: const [],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/left/icon_text.dart';
import 'package:twitter_flutter_copy/pages/left/sidebar_text.dart';

class SidebarText extends StatelessWidget {
  const SidebarText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconWithText(icon: Icons.home, text: 'Home'),
            ],
          ),
        ),
      ),
    );
  }
}

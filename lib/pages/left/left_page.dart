import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/left/layout.dart';
import 'package:twitter_flutter_copy/pages/left/sidebar_icon.dart';
import 'package:twitter_flutter_copy/pages/left/sidebar_text.dart';

class LeftPage extends StatelessWidget {
  const LeftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
      iconOnly: Container(
        child: const SidebarIcon(),
        color: Theme.of(context).backgroundColor,
      ),
      iconwithText: Container(
        child: const SidebarText(),
        width: 250,
        padding: const EdgeInsets.all(12),
        color: Theme.of(context).backgroundColor,
      ),
    );
  }
}

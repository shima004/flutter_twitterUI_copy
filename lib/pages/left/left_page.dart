import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/left/layout.dart';
import 'package:twitter_flutter_copy/pages/left/sidebar_icon.dart';
import 'package:twitter_flutter_copy/pages/left/sidebar_text.dart';

class LeftPage extends StatelessWidget {
  const LeftPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Layout(
      iconOnly: SidebarIcon(),
      iconwithText: SidebarText(),
    );
  }
}

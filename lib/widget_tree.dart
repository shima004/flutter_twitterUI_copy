import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/layout.dart';
import 'package:twitter_flutter_copy/pages/importer.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        small: Row(
          children: [
            Expanded(child: LeftPage()),
            SizedBox(child: CenterPage(), width: 600),
            Expanded(child: Container()),
          ],
        ),
        medium: Row(
          children: const [
            Expanded(child: LeftPage()),
            SizedBox(child: CenterPage(), width: 600),
            Expanded(child: RightPage()),
          ],
        ),
        large: Row(
          children: const [
            Expanded(child: LeftPage()),
            SizedBox(child: CenterPage(), width: 600),
            Expanded(child: RightPage()),
          ],
        ),
      ),
    );
  }
}

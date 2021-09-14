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
            Expanded(child: CenterPage()),
          ],
        ),
        medium: Row(
          children: [
            Expanded(child: LeftPage()),
            Expanded(child: CenterPage()),
            Expanded(child: RightPage()),
          ],
        ),
        large: Row(
          children: [
            Expanded(child: LeftPage()),
            Expanded(child: CenterPage()),
            Expanded(child: RightPage()),
          ],
        ),
      ),
    );
  }
}

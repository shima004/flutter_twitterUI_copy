import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/layout.dart';
import 'package:twitter_flutter_copy/pages/importer.dart';

class WidgetTree extends StatelessWidget {
  const WidgetTree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(720.0 - Layout.Width(context));
    return Scaffold(
      body: Layout(
        tiny: Row(
          children: [
            SizedBox(child: LeftPage(), width: 60),
            Expanded(child: CenterPage()),
            SizedBox(
                child: Container(
                  color: Theme.of(context).backgroundColor,
                ),
                width: Layout.Width(context) - 660 > 0.0
                    ? Layout.Width(context) - 660
                    : 0.0),
          ],
        ),
        small: Row(
          children: [
            Expanded(child: LeftPage()),
            SizedBox(child: CenterPage(), width: 600),
            Expanded(
                child: Container(
              color: Theme.of(context).backgroundColor,
            )),
          ],
        ),
        medium: Row(
          children: const [
            Expanded(
              child: LeftPage(),
              flex: 1,
            ),
            SizedBox(child: CenterPage(), width: 600),
            Expanded(
              child: RightPage(),
              flex: 2,
            ),
          ],
        ),
        large: Row(
          children: [
            Expanded(
              child: Container(color: Theme.of(context).backgroundColor),
            ),
            LeftPage(),
            SizedBox(child: CenterPage(), width: 600),
            RightPage(),
            Expanded(
              child: Container(color: Theme.of(context).backgroundColor),
            ),
          ],
        ),
      ),
    );
  }
}

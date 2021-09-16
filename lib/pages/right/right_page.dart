import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/right/trend.dart';

class RightPage extends StatelessWidget {
  const RightPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TrendPage(),
          ],
        ),
      ),
    );
  }
}

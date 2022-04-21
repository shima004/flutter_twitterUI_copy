import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/center/tweet_card.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Theme.of(context).backgroundColor,
        title: const Text(
          'Home',
          textAlign: TextAlign.left,
        ),
      ),
      body: ListView(children: List.generate(20, (index) => TweetCard())),
    );
  }
}

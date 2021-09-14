import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/center/tweet_card.dart';

class CenterPage extends StatelessWidget {
  const CenterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: ListView(children: List.generate(20, (index) => TweetCard())),
    );
  }
}

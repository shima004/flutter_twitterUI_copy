import 'package:flutter/material.dart';

class TweetDeck extends StatefulWidget {
  const TweetDeck({Key? key}) : super(key: key);

  @override
  State<TweetDeck> createState() => _TweetDeckState();
}

class _TweetDeckState extends State<TweetDeck> {
  @override
  Widget build(BuildContext context) {
    // return Expanded(
    //   child: Row(
    //     children: [
    //       Column(
    //         children: const [
    //           Icon(
    //             Icons.account_circle,
    //             color: Colors.grey,
    //           ),
    //           TextField(
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 15,
    //             ),
    //             decoration: InputDecoration(
    //               border: InputBorder.none,
    //               hintText: 'Tweet',
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
    return Container(
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).backgroundColor,
      child: Row(
        children: const [
          Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          Expanded(
            child: TextField(
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Tweet',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

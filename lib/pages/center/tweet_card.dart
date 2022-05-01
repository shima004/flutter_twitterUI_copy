import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/center/bottom_icons.dart';

class TweetCard extends StatelessWidget {
  const TweetCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      clipBehavior: Clip.antiAlias,
      shape: const Border(
        bottom: BorderSide(
          color: Color(0xFF2F3336),
          width: 1,
        ),
        left: BorderSide(
          color: Color(0xFF2F3336),
          width: 1,
        ),
        right: BorderSide(
          color: Color(0xFF2F3336),
          width: 1,
        ),
      ),
      color: Colors.black,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,
              color: Colors.grey,
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: const [
                      Text(
                        '@username',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '@userid',
                        style: TextStyle(
                          fontFamily: 'Segoe UI',
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Text(
                    'TweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweetTweet',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                BottomIconBar(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

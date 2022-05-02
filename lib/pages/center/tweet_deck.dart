import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/center/tweet_card.dart';

class TweetDeck extends StatefulWidget {
  const TweetDeck({Key? key}) : super(key: key);

  @override
  State<TweetDeck> createState() => _TweetDeckState();
}

class _TweetDeckState extends State<TweetDeck> {
  final tweets = List.generate(30, (index) => TweetCard());

  @override
  Widget build(BuildContext context) {
    String? text;
    TextEditingController controller = TextEditingController();

    return Container(
      padding: const EdgeInsets.all(8),
      color: Theme.of(context).backgroundColor,
      child: SingleChildScrollView(
        controller: ScrollController(),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                border: Border(
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
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(
                          Icons.account_circle,
                          color: Colors.grey,
                          size: 50,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Tweet',
                          ),
                          maxLines: null,
                          controller: controller,
                          onChanged: (value) => text = value,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(
                          left: 50,
                          right: 14,
                          top: 14,
                          bottom: 14,
                        ),
                        child: Icon(
                          Icons.photo,
                          color: Colors.lightBlue,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(Icons.gif, color: Colors.lightBlue),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(Icons.analytics_outlined, color: Colors.lightBlue),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(Icons.tag_faces_outlined, color: Colors.lightBlue),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(Icons.calendar_today_outlined, color: Colors.lightBlue),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(14),
                        child: Icon(Icons.pin_drop_outlined, color: Colors.lightBlue),
                      ),
                      const Spacer(),
                      GestureDetector(
                        onTap: () {
                          if (text != null) {
                            setState(() {
                              tweets.insert(0, TweetCard(text: text));
                              controller.clear();
                              text = null;
                            });
                          }
                        },
                        child: Container(
                          width: 123,
                          height: 36,
                          margin: const EdgeInsets.only(right: 8),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            border: Border.all(
                              color: Colors.lightBlue,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          alignment: Alignment.center,
                          child: const Text(
                            'Tweet',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ...tweets,
          ],
        ),
      ),
    );
  }
}

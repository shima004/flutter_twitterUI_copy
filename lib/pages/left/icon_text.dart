import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/settings/const.dart';

class IconWithText extends StatelessWidget {
  final IconData icon;
  final String text;
  IconWithText({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    const textSize = 20.0;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.white,
            size: leftSideberIconSize,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: textSize,
            ),
          ),
        ],
      ),
    );
  }
}

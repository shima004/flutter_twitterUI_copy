import 'package:flutter/material.dart';

class TrendPage extends StatelessWidget {
  const TrendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF15181C),
              // border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero,
              ),
            ),
            width: 256.0,
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Trends',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            width: 256.0,
            child: Text('1'),
          ),
          Container(
            width: 256.0,
            child: Text('1'),
          ),
          Container(
            width: 256.0,
            child: Text('1'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Color(0xFF15181C),
              // border: Border.all(color: Colors.black),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.zero,
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            width: 256.0,
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Trends',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
        ],
      ),
    );
  }
}

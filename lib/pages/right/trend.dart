import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/settings/const.dart';

class TrendPage extends StatelessWidget {
  const TrendPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              // color: Theme.of(context).backgroundColor,
              color: gray,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomRight: Radius.zero,
                bottomLeft: Radius.zero,
              ),
            ),
            width: 350.0,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Trends',
              style: Theme.of(context).textTheme.headline1,
            ),
          ),
          Container(
            color: gray,
            width: 350.0,
            child: Text(
              'TrendTrendTrendTrendTrendTrendTrendTrendTrendTrend',
              style: Theme.of(context).textTheme.headline2,
            ),
            padding: const EdgeInsets.all(16.0),
          ),
          Container(
            color: gray,
            width: 350.0,
            child: Text(
              'TrendTrendTrendTrendTrendTrendTrendTrendTrendTrend',
              style: Theme.of(context).textTheme.headline2,
            ),
            padding: const EdgeInsets.all(16.0),
          ),
          Container(
            color: gray,
            width: 350.0,
            child: Text(
              'TrendTrendTrendTrendTrendTrendTrendTrendTrendTrend',
              style: Theme.of(context).textTheme.headline2,
            ),
            padding: const EdgeInsets.all(16.0),
          ),
          Container(
            decoration: const BoxDecoration(
              color: gray,
              // border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.only(
                topLeft: Radius.zero,
                topRight: Radius.zero,
                bottomRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
              ),
            ),
            width: 350.0,
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'read more',
              style: Theme.of(context).textTheme.headline2?.copyWith(
                    color: Colors.blue,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}

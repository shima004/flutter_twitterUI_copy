import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/settings/const.dart';
import 'package:twitter_flutter_copy/widget_tree.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'twitter_flutter_copy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      darkTheme: ThemeData.dark().copyWith(
        backgroundColor: Colors.black,
        textTheme: const TextTheme(
          headline1: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontFamily: 'Segoe UI',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const WidgetTree(),
    );
  }
}

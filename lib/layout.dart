import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget small;
  final Widget medium;
  final Widget large;
  const Layout({required this.small, required this.medium, required this.large});

  static final smallLimit = 1000.0;
  static final mediumLimit = 1300.0;
  static final largeLimit = 3000;

  static isSmall(BuildContext context) => MediaQuery.of(context).size.width <= smallLimit;
  static isMedium(BuildContext context) => mediumLimit < MediaQuery.of(context).size.width && MediaQuery.of(context).size.width <= largeLimit;
  static isLarge(BuildContext context) => MediaQuery.of(context).size.width >= largeLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= smallLimit) {
          return small;
        } else if (constraints.maxWidth <= mediumLimit) {
          return medium;
        } else {
          return large;
        }
      },
    );
  }
}

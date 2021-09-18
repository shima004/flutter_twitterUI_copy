import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  final Widget iconOnly;
  final Widget iconwithText;
  const Layout({required this.iconOnly, required this.iconwithText});

  static final iconOnlyLimit = 250.0;

  static isIconLimit(BuildContext context) =>
      MediaQuery.of(context).size.width <= iconOnlyLimit;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= iconOnlyLimit) {
          return iconOnly;
        } else {
          return iconwithText;
        }
      },
    );
  }
}

import 'package:flutter/material.dart';

class ActionIconButton extends StatefulWidget {
  final IconData icon;
  final Color hoverColor;
  final Color highlightColor;
  final Function onPressed;
  ActionIconButton({required this.icon, required this.hoverColor, required this.highlightColor, required this.onPressed});

  @override
  _ActionIconButtonState createState() => _ActionIconButtonState();
}

class _ActionIconButtonState extends State<ActionIconButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails details) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      child: IconButton(
        onPressed: () {},
        splashRadius: 18.0,
        hoverColor: widget.hoverColor,
        highlightColor: widget.highlightColor,
        icon: Icon(
          widget.icon,
          size: 18.0,
          color: _isPressed ? widget.hoverColor.withAlpha(200) : Colors.black,
        ),
      ),
    );
  }
}

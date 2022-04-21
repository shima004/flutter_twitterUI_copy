import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/pages/center/action_icon_button.dart';

class IconDatas {
  final IconData icon;
  final Color hoverColor;
  final Color highlightColor;
  final Function onPressed;
  IconDatas({required this.icon, required this.hoverColor, required this.highlightColor, required this.onPressed});
}

class BottomIconBar extends StatelessWidget {
  BottomIconBar({Key? key}) : super(key: key);

  final List<IconDatas> _iconDatas = [
    IconDatas(
        icon: Icons.message_outlined, hoverColor: const Color(0x19299BF0), highlightColor: const Color(0x33299BF0), onPressed: () => print('home')),
    IconDatas(icon: Icons.repeat, hoverColor: const Color(0x1900BA7C), highlightColor: const Color(0x1900BA7C), onPressed: () => print('search')),
    IconDatas(icon: Icons.star_border, hoverColor: const Color(0x19F91880), highlightColor: const Color(0x33F91880), onPressed: () => print('noti')),
    IconDatas(
        icon: Icons.file_upload_outlined, hoverColor: const Color(0x19299BF0), highlightColor: const Color(0x33299BF0), onPressed: () => print('a'))
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ..._iconDatas
            .map((data) =>
                ActionIconButton(icon: data.icon, hoverColor: data.hoverColor, highlightColor: data.highlightColor, onPressed: data.onPressed))
            .toList(),
      ],
    );
  }
}

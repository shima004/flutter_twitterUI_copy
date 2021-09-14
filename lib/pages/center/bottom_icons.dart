import 'package:flutter/material.dart';

class BottomIconBar extends StatelessWidget {
  const BottomIconBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {},
          splashRadius: 18.0,
          hoverColor: const Color(0x19299BF0),
          highlightColor: const Color(0x33299BF0),
          icon: const Icon(
            Icons.message_outlined,
            size: 18.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          splashRadius: 18.0,
          hoverColor: const Color(0x1900BA7C),
          highlightColor: const Color(0x3300BA7C),
          icon: const Icon(
            Icons.repeat,
            size: 18.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          splashRadius: 18.0,
          hoverColor: const Color(0x19F91880),
          highlightColor: const Color(0x33F91880),
          icon: const Icon(
            Icons.favorite_border,
            size: 18.0,
          ),
        ),
        IconButton(
          onPressed: () {},
          splashRadius: 18.0,
          hoverColor: const Color(0x19299BF0),
          highlightColor: const Color(0x33299BF0),
          icon: const Icon(
            Icons.file_upload_outlined,
            size: 18.0,
          ),
        ),
      ],
    );
  }
}
        // Expanded(
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.message_outlined),
        //   ),
        // ),
        // Expanded(
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.message_outlined),
        //   ),
        // ),
        // Expanded(
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.message_outlined),
        //   ),
        // ),
        // Expanded(
        //   child: IconButton(
        //     onPressed: () {},
        //     icon: Icon(Icons.message_outlined),
        //   ),
        // ),
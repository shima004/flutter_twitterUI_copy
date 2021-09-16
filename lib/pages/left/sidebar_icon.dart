import 'package:flutter/material.dart';

class SidebarIcon extends StatelessWidget {
  const SidebarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.home, size: 26),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.search, size: 26),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.favorite, size: 26),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

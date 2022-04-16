import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/settings/const.dart';

class SidebarIcon extends StatelessWidget {
  const SidebarIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: const [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.home, size: leftSideberIconSize),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.search, size: leftSideberIconSize),
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Icon(Icons.favorite, size: leftSideberIconSize),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

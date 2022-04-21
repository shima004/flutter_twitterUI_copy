import 'package:flutter/material.dart';
import 'package:twitter_flutter_copy/settings/const.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  FocusNode _focusnode = FocusNode();
  bool _isSearching = false;

  @override
  void initState() {
    super.initState();
    _focusnode.addListener(() {
      setState(() {
        _isSearching = _focusnode.hasFocus;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350.0,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: gray,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
        border: _isSearching ? Border.all(color: Colors.blue) : Border.all(color: Colors.black),
      ),
      child: TextField(
        focusNode: _focusnode,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: Icon(
            Icons.search,
            color: _isSearching ? Colors.blue : lightGray,
          ),
          hintText: 'Search',
          hintStyle: Theme.of(context).textTheme.headline2?.copyWith(
                color: lightGray,
              ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        //height: 42,
        decoration: BoxDecoration(
          boxShadow: boxShadowItem,
          color: Colors.white,
          borderRadius: borderRadiusItem,
        ),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: borderRadiusItem,
                ),
                child: TextField(
                  onChanged: (text){
                    print(text);
                  },
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    isDense: true,
                    icon: Icon(Icons.search, color: mainTextColor),
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: TextStyle(fontSize: 17, color: mainTextColor),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

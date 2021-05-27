import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.all(
          Radius.circular(10.0),
        ),
      ),
      height: 60,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white38,
          ),
          hintText: 'Search TV Shows, Videos and Movies',
          hintStyle: TextStyle(color: Colors.white38, fontSize: 20),
          enabledBorder: InputBorder.none,
          border: InputBorder.none,
        ),
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white38,
        ),
      ),
    );
  }
}

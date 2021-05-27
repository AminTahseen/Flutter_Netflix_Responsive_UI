import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NetflixSearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        height: 50,
        width: 65.w,
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search TV Shows, Videos and Movies...',
            hintStyle: TextStyle(color: Colors.white38, fontSize: 20),
            enabledBorder: InputBorder.none,
            border: InputBorder.none,
          ),
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white38,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text(
            'Tv Shows',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'Movies',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'Recently Added',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            'My List',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

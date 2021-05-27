import 'package:flutter/material.dart';

import 'netflix_navbar.dart';
import 'netflix_slider.dart';
import 'netflix_trending.dart';

class NetflixTabletApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              NetflixNavBar(),
              NetflixSlider(),
              SizedBox(height: 20),
              NetflixTrending(),
            ],
          ),
        ),
      ),
    );
  }
}

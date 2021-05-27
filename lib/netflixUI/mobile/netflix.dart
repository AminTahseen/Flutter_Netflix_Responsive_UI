import 'package:flutter/material.dart';
import './searchbar.dart';
import './originalsection.dart';
import './continuesection.dart';

class NetflixApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0.0,
          leading: Icon(Icons.menu),
          backgroundColor: Colors.black87,
          title: Container(
            height: 60,
            width: 100,
            child: Image.network(
              'https://assets.stickpng.com/images/580b57fcd9996e24bc43c529.png',
              fit: BoxFit.cover,
            ),
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 5.0),
              child: Icon(Icons.notifications),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black87,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 20),
                SearchBar(),
                SizedBox(height: 30),
                NetFlixOriginalSection(),
                SizedBox(height: 20),
                NetFlixContinueSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

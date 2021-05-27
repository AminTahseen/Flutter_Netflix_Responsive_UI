import 'package:flutter/material.dart';
import 'package:responsive_app/netflixUI/tablet/netflix_searchbar.dart';

import 'netflix_navbar_list.dart';

class NetflixNavBar extends StatefulWidget {
  @override
  _NetflixNavBarState createState() => _NetflixNavBarState();
}

class _NetflixNavBarState extends State<NetflixNavBar> {
  bool showHideBar = false;
  Widget animatedWidget = Navbar();
  void showhideBar() {
    this.setState(() {
      showHideBar = !showHideBar;
      if (showHideBar == true) {
        animatedWidget = NetflixSearchBar();
      } else {
        animatedWidget = Navbar();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Container(
            margin: const EdgeInsets.all(10.0),
            height: 60,
            width: 100,
            child: Image.network(
              'https://assets.stickpng.com/images/580b57fcd9996e24bc43c529.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: AnimatedSwitcher(
            duration: const Duration(milliseconds: 1000),
            child: animatedWidget,
          ),
        ),
        InkWell(
          onTap: () => showhideBar(),
          child: Container(
            margin: const EdgeInsets.only(right: 20.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

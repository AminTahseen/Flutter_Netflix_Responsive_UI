import 'package:flutter/material.dart';

class NetflixSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          width: double.infinity,
          child: ClipRRect(
            child: Image.network(
              'https://info.umkc.edu/unews/wp-content/uploads/2017/09/marvel-2.jpg',
              fit: BoxFit.fill,
              height: 500,
            ),
          ),
        ),
        Positioned(
          top: 150,
          left: 30,
          child: Text(
            'Marvel\'s The \nDefenders',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: 30,
          top: 10,
          child: SizedBox(
            height: 20,
          ),
        ),
        Positioned(
          left: 30,
          top: 280,
          child: SizedBox(
            width: 500,
            child: Text(
              'Four superheroes and vigilantes unite their powers in order to fight the Hand, a supervillain who threatens to destroy New York City.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        Positioned(
          top: 370,
          left: 30,
          child: SizedBox(
            width: 210,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FlatButton(
                  onPressed: () => {},
                  color: Colors.white,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(Icons.play_arrow),
                      Text(
                        "Play",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                FlatButton(
                  onPressed: () => {},
                  color: Colors.grey,
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    // Replace with a Row for horizontal icon + text
                    children: <Widget>[
                      Icon(Icons.add),
                      Text(
                        "My List",
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

/*
 */

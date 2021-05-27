import 'package:flutter/material.dart';

class OriginalItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      height: 250,
      decoration: BoxDecoration(color: Colors.grey),
      child: Stack(
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
            bottom: 80,
            left: 10,
            child: Text(
              'TV SERIES - ACTION',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 10,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Marvel\'s The Defenders',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    width: 40,
                    margin: EdgeInsets.only(right: 10.0),
                    child: FloatingActionButton(
                      onPressed: () {},
                      backgroundColor: Colors.red,
                      child: Icon(Icons.play_arrow),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text(
              'Season 1 - Episode 8',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

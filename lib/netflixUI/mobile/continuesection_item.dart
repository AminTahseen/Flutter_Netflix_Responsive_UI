import 'package:flutter/material.dart';

class ContinueItem extends StatelessWidget {
  final String imgUrl;

  ContinueItem({this.imgUrl});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Stack(
        children: <Widget>[
          Positioned(
            child: Container(
              width: 250,
              height: 300,
              child: ClipRRect(
                child: Image.network(
                  imgUrl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 100,
            left: 0,
            child: Container(
              width: 250,
              height: 300,
              color: Colors.grey[850],
              child: Container(
                margin: EdgeInsets.only(top: 10, left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Series Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5),
                      child: Text(
                        'S1:E1 "Out of The Smokeless Fire"',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Stack(children: <Widget>[
                        Container(
                          width: 220,
                          height: 5,
                          color: Colors.grey.shade800,
                        ),
                        Container(
                          width: 100,
                          height: 5,
                          color: Colors.red,
                        ),
                      ]),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            bottom: 50,
            right: 10,
            child: Container(
              width: 40,
              height: 40,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.red,
                child: Icon(Icons.play_arrow),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

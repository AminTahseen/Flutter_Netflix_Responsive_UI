import 'package:flutter/material.dart';

class TrendingItem extends StatelessWidget {
  final String imgUrl;
  final bool isWatching;

  const TrendingItem({this.imgUrl, this.isWatching});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5.0),
          width: 250,
          height: 500,
          color: Colors.red,
          child: Image.network(
            this.imgUrl,
            fit: BoxFit.fill,
            height: 200,
          ),
        ),
        this.isWatching
            ? Positioned(
                top: 50,
                left: 100,
                bottom: 50,
                child: Container(
                  child: FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: Colors.white.withOpacity(0.9),
                    child: Icon(
                      Icons.play_arrow,
                      color: Colors.black,
                    ),
                  ),
                ),
              )
            : Positioned(
                top: 50,
                left: 100,
                bottom: 50,
                child: Text(''),
              ),
      ],
    );
  }
}

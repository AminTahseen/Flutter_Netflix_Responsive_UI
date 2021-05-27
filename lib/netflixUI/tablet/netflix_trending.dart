import 'package:flutter/material.dart';
import 'package:responsive_app/netflixUI/tablet/trending_item.dart';

class NetflixTrending extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Trending Now',
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          SizedBox(
            height: 300,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                TrendingItem(
                  imgUrl:
                      'https://cdn.shopify.com/s/files/1/0319/2540/3783/products/x_gye-fp4983_1.jpg?v=1608107964',
                  isWatching: true,
                ),
                TrendingItem(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/716xPEbl7ZL._SY500_.jpg',
                  isWatching: false,
                ),
                TrendingItem(
                  imgUrl:
                      'https://static.wikia.nocookie.net/13reasonswhy/images/5/5c/13_Reasons_Why_poster.jpg/revision/latest?cb=20170411205014',
                  isWatching: true,
                ),
                TrendingItem(
                  imgUrl:
                      'https://m.media-amazon.com/images/M/MV5BZTZhMWYzMWQtNmJkYi00YjE5LWJmNGUtZjE4ODdjZjYzMDVjXkEyXkFqcGdeQXVyNjU0NTI0Nw@@._V1_.jpg',
                  isWatching: false,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

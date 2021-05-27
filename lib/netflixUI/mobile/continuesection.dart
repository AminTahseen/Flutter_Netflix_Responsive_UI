import 'package:flutter/material.dart';
import './continuesection_item.dart';

class NetFlixContinueSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            child: Container(
              child: Text(
                'Continue Watching',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            width: double.infinity,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ContinueItem(
                  imgUrl:
                      'https://info.umkc.edu/unews/wp-content/uploads/2017/09/marvel-2.jpg',
                ),
                ContinueItem(
                  imgUrl:
                      'https://cdn.shopify.com/s/files/1/0319/2540/3783/products/x_gye-fp4983_1.jpg?v=1608107964',
                ),
                ContinueItem(
                  imgUrl:
                      'https://images-na.ssl-images-amazon.com/images/I/716xPEbl7ZL._SY500_.jpg',
                ),
                ContinueItem(
                  imgUrl:
                      'https://static.wikia.nocookie.net/13reasonswhy/images/5/5c/13_Reasons_Why_poster.jpg/revision/latest?cb=20170411205014',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

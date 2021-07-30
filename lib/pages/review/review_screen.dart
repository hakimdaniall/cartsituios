import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/review/components/filter_bar.dart';
import 'package:tiktok_ui/pages/review/components/item_review.dart';
import 'package:tiktok_ui/theme/colors.dart';

class ReviewScreen extends StatefulWidget {
  static const String id = 'review_screen';

  @override
  _ReviewScreenState createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Store Reviews',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: grey),
        ),
      ),
      body: Column(
        children: [
          FilterBar(
            numOfItem: 4,
          ),
          ProductItem(
            itemImage: 'assets/images/ps4_console_white_1.png',
            storeOwner: 'Faisal Shadli',
            itemName: 'Playstation 4 Controller',
            rating: '5.0',
          ),
          ProductItem(
            itemImage: 'assets/images/Image Popular Product 2.png',
            storeOwner: 'Faisal Shadli',
            itemName: 'Wireless Headphone',
            rating: '4.6',
          ),
          ProductItem(
            itemImage: 'assets/images/glap.png',
            storeOwner: 'Faisal Shadli',
            itemName: 'Motorcycle Glove',
            rating: '4.2',
          ),
          ProductItem(
            itemImage: 'assets/food/food_1.png',
            storeOwner: 'Faisal Shadli',
            itemName: 'Food',
            rating: '2.0',
          ),
        ],
      ),
    );
  }
}

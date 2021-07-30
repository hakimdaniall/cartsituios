import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';

class WishlistEmpty extends StatelessWidget {
  static const String id = 'wishlist_empty';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        backgroundColor: appBgColor,
        centerTitle: true,
        title: Text('Wish List'),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/empty-wishlist.png',
                    height: 300,
                    width: 300,
                  ),
                  Text(
                    'Your Wishlist is empty',
                    style: TextStyle(
                        color: grey,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Tap heart button to start saving your favourite items.',
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/wishlist/components/filter_bar.dart';
import 'package:tiktok_ui/theme/colors.dart';

class WishlistScreen extends StatefulWidget {
  static const String id = 'wishlist_screen';

  @override
  _WishlistScreenState createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
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
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: appBgColor,
        title: Text(
          'Wish List',
          style:
              TextStyle(color: grey, fontWeight: FontWeight.bold, fontSize: 18),
        ),
        centerTitle: true,
        // actions: <Widget>[
        //   FlatButton(
        //     child: Text(
        //       'Edit',
        //       style: TextStyle(color: grey, fontSize: 18),
        //     ),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      body: Column(
        children: [
          FilterBar(),
          WishlistItem(
            itemImage: 'assets/images/ps4_console_white_1.png',
            itemName: 'Playstation Controller',
            itemPrice: 'RM 200',
            itemVariant: 'Wireless',
            itemColor: 'Grey',
          ),
          WishlistItem(
            itemImage: 'assets/images/wireless headset.png',
            itemName: 'wireless Headset',
            itemPrice: 'RM 79.99',
            itemVariant: 'Wireless',
            itemColor: 'Black',
          ),
          WishlistItem(
            itemImage: 'assets/images/Image Popular Product 2.png',
            itemName: 'Adidas Short',
            itemPrice: 'RM 200',
            itemVariant: 'Cotton',
            itemColor: 'Grey',
          ),
        ],
      ),
    );
  }
}

class WishlistItem extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final String itemPrice;
  final String itemVariant;
  final String itemColor;

  const WishlistItem({
    this.itemImage,
    this.itemName,
    this.itemPrice,
    this.itemVariant,
    this.itemColor,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 110.0,
                height: 110.0,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(itemImage)),
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(width: 8.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemName,
                    style: TextStyle(
                        color: grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0),
                  ),
                  Text(
                    itemPrice,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          '$itemVariant | Color: $itemColor',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: grey,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.0),
                  MaterialButton(
                    // borderSide: BorderSide(color: appBgColor),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: grey),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Add To Cart',
                      style: TextStyle(
                          fontSize: 12,
                          color: grey,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Divider(
            height: 20,
            color: grey,
            thickness: 1,
          )
        ],
      ),
    );
  }
}

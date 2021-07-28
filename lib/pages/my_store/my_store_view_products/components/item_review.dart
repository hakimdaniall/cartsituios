import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_ui/theme/colors.dart';

// ignore: camel_case_types
class itemDivider extends StatelessWidget {
  const itemDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10,
    );
  }
}

class ProductItem extends StatelessWidget {
  final String itemImage;
  final String itemName;
  final String price;

  const ProductItem({
    this.itemImage,
    this.itemName,
    this.price,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.black38,
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
            style: BorderStyle.solid
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.white60,
              offset: const Offset(1.0, 1.0),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.black,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(itemImage)),
                  borderRadius: BorderRadius.circular(10.0)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    itemName,
                    style: TextStyle(
                        color: grey, fontWeight: FontWeight.bold, fontSize: 16.0),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    price,
                    style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 14),
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

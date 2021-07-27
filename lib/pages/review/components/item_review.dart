import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_ui/theme/colors.dart';

class ProductItem extends StatelessWidget {
  final String itemImage;
  final String storeOwner;
  final String itemName;
  final String rating;

  const ProductItem({
    this.itemImage,
    this.storeOwner,
    this.itemName,
    this.rating,
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
                      storeOwner,
                      style: TextStyle(
                          color: grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    Text(
                      itemName,
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
                            rating,
                            style: TextStyle(
                                fontWeight: FontWeight.w600, color: grey),
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset("assets/icons/Star Icon.svg")
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            height: 20,
            color: grey,
            thickness: 1,
          ),
        ],
      ),
    );
  }
}

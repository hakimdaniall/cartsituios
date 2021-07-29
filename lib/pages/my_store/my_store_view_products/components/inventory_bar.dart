import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';

class InventoryBar extends StatelessWidget {
  final String itemName;

  const InventoryBar({this.itemName, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          margin: EdgeInsets.only(left: 16.0, bottom: 20.0, top: 20.0),
          child: Text(
            '$itemName',
            style: TextStyle(
                color: grey, fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ),
      ],
    );
  }
}

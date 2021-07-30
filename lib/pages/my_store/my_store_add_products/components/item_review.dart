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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: EdgeInsets.only(left: 16.0, top: 4.0, bottom: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
        ),
        child: TextField(
          decoration: InputDecoration(
              border: InputBorder.none, hintText: 'Flat Number/House Number'),
        ),
      ),
    );
  }
}

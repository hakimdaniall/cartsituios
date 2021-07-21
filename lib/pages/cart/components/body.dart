import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'cart_item_cart.dart';

class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CartItemCard(),
      ],
    );
  }
}

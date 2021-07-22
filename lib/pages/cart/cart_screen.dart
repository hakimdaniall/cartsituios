import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/models/Cart.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:tiktok_ui/pages/cart/components/body.dart';
import 'package:tiktok_ui/pages/cart/components/checkout_card.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: black,
      elevation: 0.0,
      leading: InkWell(
        onTap: () {Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: white,
        ),
      ),
      title: Center(
        child: Column(
          children: [
            Text('Your Cart',
            style: TextStyle(color: Colors.white),
            ),
            Text(
              '${demoCarts.length} items',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}

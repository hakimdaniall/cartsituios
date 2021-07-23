import 'package:flutter/material.dart';
import 'package:tiktok_ui/models/Cart.dart';
import 'package:tiktok_ui/pages/checkout/components/payment_card.dart';
import 'package:tiktok_ui/pages/checkout/components/body.dart';
import 'package:tiktok_ui/theme/colors.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: PaymentCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: appBgColor,
      elevation: 0.0,
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: white,
        ),
      ),
      title: Center(
        child: Column(
          children: [
            Text(
              'Set Couriers',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:tiktok_ui/models/Cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
    @required this.cart,
  }) : super(key: key);

  final Cart cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 60,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(cart.product.title,
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: white,
            ),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                  text: 'RM ${cart.product.price}',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.redAccent,
                  ),
                  children: [
                    TextSpan(
                      text: ' x${cart.numOfItem}',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
              ),
            ),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

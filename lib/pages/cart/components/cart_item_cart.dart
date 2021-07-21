import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 20.0, height: 50.0),
        SizedBox(width: 80,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset('assets/dance/dance_1.jpg'),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Wireless Controller',
              style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: white,
            ),
              maxLines: 2,
            ),
            Text.rich(
              TextSpan(
                  text: 'RM 120',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.redAccent,
                  ),
                  children: [
                    TextSpan(
                      text: ' x2',
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

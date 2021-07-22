import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'cart_item_cart.dart';

import 'package:tiktok_ui/pages/models/Cart.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
        EdgeInsets.symmetric(horizontal:20),
          child: ListView.builder(
           itemCount: demoCarts.length,
            itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
               child: Dismissible(
                key: Key(demoCarts[index].product.id.toString()),
                 direction: DismissDirection.endToStart,
                   onDismissed: (direction) {
                      setState(() {
                       demoCarts.removeAt(index);
                        });
                       },
                background: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                   decoration: BoxDecoration(
                    color: Color(0xFFFFE6E6),
                     borderRadius: BorderRadius.circular(15),
                     ),
                  child: Row(
                    children: [
                     Spacer(),
                     SvgPicture.asset("assets/icons/Trash.svg"),
                     ],
                    ),
                    ),
                child:CartItemCard(cart: demoCarts[index]),
                ),
              ),
          ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:tiktok_ui/pages/cart/components/body.dart';

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 30
        ),
        height: 120,
        decoration: BoxDecoration(
          color: grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -15),
              blurRadius: 20,
              color: Color(0xFFDADADA).withOpacity(0.15),
            ),
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Row(
              //   children: [
              //     Container(
              //       height: 40,
              //       width: 40,
              //       decoration: BoxDecoration(
              //         color: grey,
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Icon(Icons.receipt_long,
              //       color: Colors.redAccent,),
              //     ),
              //     Spacer(),
              //     Text('Add voucher code', style: TextStyle(
              //       color: grey,
              //     ),),
              //     // here width is fixed thats why we u se const
              //     const SizedBox(width: 10.0),
              //     Icon(Icons.arrow_forward_ios, size: 12, color: grey,
              //     ),
              //   ],
              // ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text.rich(
                    TextSpan(
                      text: 'Total:',
                      style: TextStyle(fontSize: 16, color: black),
                      children: [
                      TextSpan(
                      text: ' RM 224.76',
                      style: TextStyle(
                          fontSize: 16,
                          color: black,
                      fontWeight: FontWeight.bold),
                      ),
                      ],
                    ),
                  ),
                    SizedBox(
                      width: 150,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(),
                      onPressed: (){},
                        child: Text('Checkout',
                        style: TextStyle(
                          fontSize: 20
                        ),),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
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
              '4 Items',
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


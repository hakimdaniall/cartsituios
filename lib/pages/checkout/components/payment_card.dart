import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';

class PaymentCard extends StatelessWidget {
  const PaymentCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
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
            //       color: red,),
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
            // In Case We Are Going To Use Voucher Section
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
                        text: ' RM 100',
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
                    style: ElevatedButton.styleFrom(primary: red),
                    onPressed: () {},
                    child: Text(
                      'Payment',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

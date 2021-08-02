import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/pages/details/components/body.dart';

class ProfileTabItemMyReviews extends StatefulWidget {
  @override
  _ProfileTabItemState createState() => _ProfileTabItemState();
}

class _ProfileTabItemState extends State<ProfileTabItemMyReviews> {
  final messageList = [
    {
      'productImage': 'assets/images/ps4_console_white_1.png',
      'productName': 'Ps4 Dualshock Controller (White)',
      'productReview': 'Excellent service from seller. ',
    },
    {
      'productImage': 'assets/images/wireless headset.png',
      'productName': 'Wireless Headset (Bluetooth 5.0)',
      'productReview':
          'Product is very good quality. Highly recommended seller.',
    },
    {
      'productImage': 'assets/images/Image Popular Product 2.png',
      'productName': 'Nike Football Shorts',
      'productReview': 'Very friendly and trusted seller.',
    },
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: messageList.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final item = messageList[index];
        return InkWell(
          onTap: () {
            Navigator.push(
                context,
                PageTransition(
                    type: PageTransitionType.rightToLeft, child: Body()));
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 60.0,
                            height: 60.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                              ),
                              image: DecorationImage(
                                image: AssetImage(item['productImage']),
                                fit: BoxFit.scaleDown,
                              ),
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Text(
                                    item['productName'],
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3.0),
                              Container(
                                width: width - 150.0,
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFDA0037),
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFDA0037),
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFDA0037),
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xFFDA0037),
                                      size: 20.0,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      color: Color(0xFFDA0037),
                                      size: 20.0,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 3.0),
                              Container(
                                width: width - 150.0,
                                child: Text(
                                  item['productReview'],
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

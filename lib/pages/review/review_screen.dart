import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_ui/pages/review/components/custom_app_bar.dart';
import 'package:tiktok_ui/theme/colors.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({Key key}) : super(key: key);

  get rating => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: CustomAppBar(4.5),
      body: Container(
        margin: EdgeInsets.only(left: 30, top: 20, right: 30, bottom: 50),
        height: 150,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // chang
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('assets/spook.png'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text('Faisal Shadli'),
                  Text('Colorlight smartd'),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                      decoration: BoxDecoration(
                          color: grey, borderRadius: BorderRadius.circular(14)),
                      child: Row(
                        children: [
                          Text(
                            rating.toString(),
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(width: 5),
                          SvgPicture.asset("assets/icons/Star Icon.svg")
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

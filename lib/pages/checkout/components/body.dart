import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return ItemSection();
  }
}

class ItemSection extends StatelessWidget {
  const ItemSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                'shadli.kl',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: grey,
                ),
              ),
            ),
          ),
        ),
        Divider(
          color: grey,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SizedBox(
                width: 60,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset('assets/images/ps4_console_white_1.png'),
                  ),
                ),
              ),
            ),
            SizedBox(width: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wireless Controller for PS4',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: white,
                  ),
                  maxLines: 2,
                ),
                Text.rich(
                  TextSpan(
                    text: 'RM 50',
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
        ),
        Divider(
          color: grey,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text(
              'Sub Total: RM 100',
              style: TextStyle(
                  color: grey, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Divider(
          color: grey,
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Align(
            alignment: Alignment.centerRight,
            child: SizedBox(
              width: 150,
              height: 40,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: red),
                onPressed: () {},
                child: Text(
                  'Select Courier',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

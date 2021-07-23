import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tiktok_ui/models/Product.dart';
import 'package:tiktok_ui/theme/colors.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    @required this.pressOnPreview,
  }) : super(key: key);

  final Product product;
  final GestureTapCallback pressOnPreview;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Wireless Controller for PS4',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold, color: grey)),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            padding: EdgeInsets.all(15),
            width: 80,
            decoration: BoxDecoration(
                color: Color(0xFFFFE6E6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                )),
            child: SvgPicture.asset(
              'assets/icons/Heart Icon_2.svg',
              color: Color(0xFFFF4848),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 60,
          ),
          child: Text(
            'Set out on Ellie’s journey with this stylish limited edition controller presented in a Steel Black matte finish with her iconic fern tattoo on the grip.',
            maxLines: 3,
            style: TextStyle(color: grey),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: GestureDetector(
            onTap: pressOnPreview,
            child: Row(
              children: [
                Text(
                  'Product Preview',
                  style: TextStyle(color: red, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: red,
                ),
                SizedBox(width: 10),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'VIDEO CALL',
                        style: TextStyle(
                            color: grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 12),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: grey)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'CHAT',
                        style: TextStyle(
                            color: grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 14),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

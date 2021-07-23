import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_ui/models/Product.dart';
import 'package:tiktok_ui/pages/cart/cart_screen.dart';
import 'package:tiktok_ui/pages/details/components/product_description.dart';
import 'package:tiktok_ui/pages/details/components/top_rounded.container.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:tiktok_ui/pages/details/components/product_images.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProductImages(),
        TopRoundedContainer(
          color: appBgColor,
          child: ProductDescription(
            product: product,
            pressOnPreview: () {},
          ),
        ),
        TopRoundedContainer(
            color: appBgColor,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 50, bottom: 50),
              child: ElevatedButton(
                style: ButtonStyle(),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen()),
                  );
                },
                child: Text(
                  'Add To Cart',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ))
      ],
    );
  }
}

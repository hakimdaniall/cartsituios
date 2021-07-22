import 'package:flutter/material.dart';

class ProductImages extends StatelessWidget {
  const ProductImages({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 200,
        child: AspectRatio(
          aspectRatio: 1,
          child:
              Image(image: AssetImage('assets/images/ps4_console_white_1.png')),
        ),
      ),
    );
  }
}

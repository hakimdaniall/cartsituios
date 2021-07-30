import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tiktok_ui/pages/details/components/body.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'components/custom_app_bar.dart';
import 'components/body.dart';

class DetailsScreen extends StatelessWidget {
  static const String id = 'details_screen';
  const DetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: CustomAppBar(4.6),
      body: Body(
        product: null,
      ),
    );
  }
}

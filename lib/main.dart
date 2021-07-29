import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_ui/appBehaviour/my_behaviour.dart';
import 'package:tiktok_ui/pages/home.dart';
import 'package:tiktok_ui/pages/profile/edit_profile.dart';
import 'package:tiktok_ui/pages/profile/myreview.dart';
import 'package:tiktok_ui/pages/store/edit_store.dart';
import 'package:tiktok_ui/pages/wishlist/wishlist_screen.dart';
import 'pages/details/details_screen.dart';
import 'pages/review/review_screen.dart';
import 'pages/splashScreen.dart';
import 'package:tiktok_ui/pages/cart/cart_screen.dart';
import 'package:tiktok_ui/pages/checkout/checkout_screen.dart';
import 'package:tiktok_ui/pages/creator_profile/creator_profile.dart';
import 'package:tiktok_ui/pages/details/details_screen.dart';
import 'package:tiktok_ui/pages/profile/profile.dart';
import 'package:tiktok_ui/pages/profile/my_store_profile.dart';
import 'package:tiktok_ui/pages/review/review_screen.dart';
import 'package:tiktok_ui/pages/splashScreen.dart';
import 'package:tiktok_ui/pages/store/store_screen.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/my_store_view_products.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/view_product_inventory.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/selected_product_inventory.dart';
import 'pages/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: Colors.white,
        ),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primarySwatch: Colors.red,
        primaryColor: Colors.black,
        indicatorColor: Colors.white,
        tabBarTheme: TabBarTheme(),
        fontFamily: 'Montserrat',
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
    );
  }
}

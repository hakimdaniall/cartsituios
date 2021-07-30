import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tiktok_ui/appBehaviour/my_behaviour.dart';
import 'package:tiktok_ui/pages/home.dart';
<<<<<<< HEAD
import 'package:tiktok_ui/pages/my_store/my_store_view_products/my_store_view_products.dart';
=======
import 'package:tiktok_ui/pages/notifications_messages/chat.dart';
import 'package:tiktok_ui/pages/notifications_messages/messages.dart';
import 'package:tiktok_ui/pages/notifications_messages/notification_list.dart';
import 'package:tiktok_ui/pages/notifications_messages/notifications.dart';
>>>>>>> 7ac67183b51623aaab2e6bbcc6980a0007bf5461
import 'package:tiktok_ui/pages/profile/edit_profile.dart';
import 'package:tiktok_ui/pages/profile/myreview.dart';
import 'package:tiktok_ui/pages/profile/profile_setting.dart';
import 'package:tiktok_ui/pages/profile/term_of_use.dart';
import 'package:tiktok_ui/pages/splashScreen.dart';
import 'package:tiktok_ui/pages/store/edit_store.dart';
import 'package:tiktok_ui/pages/store/store_screen.dart';
import 'package:tiktok_ui/pages/wishlist/wishlist_empty.dart';
import 'package:tiktok_ui/pages/wishlist/wishlist_screen.dart';
import 'pages/details/details_screen.dart';
import 'pages/review/review_screen.dart';
import 'pages/splashScreen.dart';
<<<<<<< HEAD
=======
import 'package:tiktok_ui/pages/cart/cart_screen.dart';
import 'package:tiktok_ui/pages/checkout/checkout_screen.dart';
import 'package:tiktok_ui/pages/creator_profile/creator_profile.dart';
import 'package:tiktok_ui/pages/details/details_screen.dart';
import 'package:tiktok_ui/pages/profile/profile.dart';
import 'package:tiktok_ui/pages/profile/my_store_profile.dart';
import 'package:tiktok_ui/pages/review/review_screen.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/my_store_view_products.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/view_product_inventory.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/selected_product_inventory.dart';
import 'pages/home.dart';
>>>>>>> 7ac67183b51623aaab2e6bbcc6980a0007bf5461

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
<<<<<<< HEAD
      home: ViewMyStoreProducts(),
=======
      home: SplashScreen(),
      routes: {
        SplashScreen.id: (context) => SplashScreen(),
        EditProfile.id: (context) => EditProfile(),
        Home.id: (context) => Home(),
        EditStore.id: (context) => EditStore(),
        WishlistScreen.id: (context) => WishlistScreen(),
        StoreScreen.id: (context) => StoreScreen(),
        ReviewScreen.id: (context) => ReviewScreen(),
        MyStoreProfileScreen.id: (context) => MyStoreProfileScreen(),
        ProfileScreen.id: (context) => ProfileScreen(),
        CreatorProfileScreen.id: (context) => CreatorProfileScreen(),
        CheckOutScreen.id: (context) => CheckOutScreen(),
        DetailsScreen.id: (context) => DetailsScreen(),
        CartScreen.id: (context) => CartScreen(),
        WishlistEmpty.id: (context) => WishlistEmpty(),
        MyReview.id: (context) => MyReview(),
        SelectedProductInventory.id: (context) => SelectedProductInventory(),
        ViewProductInventory.id: (context) => ViewProductInventory(),
        ViewMyStoreProducts.id: (context) => ViewMyStoreProducts(),
        ChatScreen.id: (context) => ChatScreen(),
        Messages.id: (context) => Messages(),
        NotificationList.id: (context) => NotificationList(),
        Notifications.id: (context) => Notifications(),
        TermOfUse.id: (context) => TermOfUse(),
        ProfileSetting.id: (context) => ProfileSetting(),
      },
>>>>>>> 7ac67183b51623aaab2e6bbcc6980a0007bf5461
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

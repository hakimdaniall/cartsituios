import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/components/filter_bar.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/components/item_view.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/pages/my_store/my_store_add_products/my_store_add_products.dart';

class ViewMyStoreProducts extends StatefulWidget {
  static const String id = 'view_my_store_products';
  const ViewMyStoreProducts({Key key}) : super(key: key);

  @override
  _ViewMyStoreProductsState createState() => _ViewMyStoreProductsState();
}

class _ViewMyStoreProductsState extends State<ViewMyStoreProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBgColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: grey,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Products',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: grey),
        ),
      ),
      body: Column(
        children: [
          FilterBar(
            numOfItem: 4,
          ),
          ProductItem(
            itemImage: 'assets/images/ps4_console_white_1.png',
            itemName: 'Playstation 4 Controller',
            price: 'RM 150.00',
          ),
          itemDivider(),
          ProductItem(
            itemImage: 'assets/images/wireless headset.png',
            itemName: 'Wireless Headphone',
            price: 'RM 100.00',
          ),
          itemDivider(),
          ProductItem(
            itemImage: 'assets/images/glap.png',
            itemName: 'Motorcycle Glove',
            price: 'RM 50.00',
          ),
          itemDivider(),
          ProductItem(
            itemImage: 'assets/food/food_1.png',
            itemName: 'Food',
            price: 'RM 15.00',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              PageTransition(
                  type: PageTransitionType.rightToLeft, child: AddMyStoreProducts()));
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Color(0xFFDA0037),
      ),
    );
  }
}

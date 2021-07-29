import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/components/filter_bar.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/components/inventory_review.dart';
import 'package:tiktok_ui/theme/colors.dart';

class ViewProductInventory extends StatefulWidget {
  static const String id = 'view_product_inventory';
  const ViewProductInventory({Key key}) : super(key: key);

  @override
  _ViewProductInventoryState createState() => _ViewProductInventoryState();
}

class _ViewProductInventoryState extends State<ViewProductInventory> {
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
          'Select Product',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: grey),
        ),
      ),
      body: Column(
        children: [
          FilterBar(
            numOfItem: 4,
          ),
          InventoryItem(
            inventoryImage: 'assets/images/ps4_console_white_1.png',
            inventoryName: 'Playstation 4 Controller',
            price: 'RM 150.00',
            quantity: 'Quantity: 5',
          ),
          inventoryDivider(),
          InventoryItem(
            inventoryImage: 'assets/images/wireless headset.png',
            inventoryName: 'Wireless Headphone',
            price: 'RM 100.00',
            quantity: 'Quantity: 2',
          ),
          inventoryDivider(),
          InventoryItem(
            inventoryImage: 'assets/images/glap.png',
            inventoryName: 'Motorcycle Glove',
            price: 'RM 50.00',
            quantity: 'Quantity: 4',
          ),
          inventoryDivider(),
          InventoryItem(
            inventoryImage: 'assets/food/food_1.png',
            inventoryName: 'Food',
            price: 'RM 15.00',
            quantity: 'Quantity: 1',
          ),
        ],
      ),
    );
  }
}

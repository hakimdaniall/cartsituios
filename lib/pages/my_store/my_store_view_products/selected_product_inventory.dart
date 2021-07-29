import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/components/selected_inventory_review.dart';
import 'package:tiktok_ui/pages/my_store/my_store_view_products/components/inventory_bar.dart';

class SelectedProductInventory extends StatefulWidget {
  const SelectedProductInventory({Key key}) : super(key: key);

  @override
  _SelectedProductInventoryState createState() =>
      _SelectedProductInventoryState();
}

class _SelectedProductInventoryState extends State<SelectedProductInventory> {
  var buttonText = 'IN';

  editDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: appBgColor,
          scrollable: true,
          title: Text(
            '30/07/2021',
            style: TextStyle(color: Colors.white60),
          ),
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Column(
                children: <Widget>[
                  TextFormField(
                    style: TextStyle(color: Colors.white60),
                    decoration: InputDecoration(
                      labelText: 'Description',
                      labelStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                    ),
                  ),
                  TextFormField(
                    style: TextStyle(color: Colors.white60),
                    decoration: InputDecoration(
                      labelText: 'Quantity',
                      labelStyle: TextStyle(
                        color: Colors.white60,
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.white60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          actions: [
            MaterialButton(
              color: Color(0xFFDA0037),
              elevation: 5.0,
              child: Text(
                buttonText,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                setState(() {
                  buttonText = 'OUT';
                });
              },
            ),
            MaterialButton(
              elevation: 5.0,
              child: Text(
                'CANCEL',
                style: TextStyle(color: Colors.white60),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            MaterialButton(
              elevation: 5.0,
              child: Text(
                'SAVE',
                style: TextStyle(color: Colors.white60),
              ),
              onPressed: () {},
            ),
          ],
        );
      },
    );
  }

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
          'Inventory',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18.0, color: grey),
        ),
      ),
      body: Column(
        children: [
          InventoryBar(
            itemName: 'Playstation 4 Controller',
          ),
          InventoryDetails(
            datetime: '2021-07-28 13:07:07',
            desc: 'Limited Stock',
            quantity: '5',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          editDialog(context);
        },
        child: const Icon(
          Icons.edit,
          color: Colors.white,
          size: 30,
        ),
        backgroundColor: Color(0xFFDA0037),
      ),
    );
  }
}

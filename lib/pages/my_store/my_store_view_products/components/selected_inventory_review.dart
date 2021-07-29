import 'package:flutter/material.dart';
import 'package:tiktok_ui/theme/colors.dart';

class selectedInventoryDivider extends StatelessWidget {
  const selectedInventoryDivider({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 10,
    );
  }
}

class InventoryDetails extends StatelessWidget {
  final String datetime;
  final String quantity;
  final String desc;

  const InventoryDetails({this.datetime, this.quantity, this.desc, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.black38,
          border: Border.all(
              color: Colors.grey, width: 1.0, style: BorderStyle.solid),
          boxShadow: [
            BoxShadow(
              color: Colors.white60,
              offset: const Offset(1.0, 1.0),
              blurRadius: 1.0,
              spreadRadius: 1.0,
            ),
            BoxShadow(
              color: Colors.black,
              offset: const Offset(0.0, 0.0),
              blurRadius: 0,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    datetime,
                    style: TextStyle(color: Colors.grey[400], fontSize: 14),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    desc,
                    style: TextStyle(color: Colors.grey[400], fontSize: 14),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10.0),
              width: 100.0,
              height: 100.0,
              child: Center(
                child: Text(
                  quantity,
                  style: TextStyle(color: Colors.grey[400], fontSize: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

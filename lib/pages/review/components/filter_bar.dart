import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  final int numOfItem;
  const FilterBar({
    this.numOfItem,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16.0),
          child: Text(
            '$numOfItem items found',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
        IconButton(
          icon: Icon(
            Icons.filter_list,
            color: Colors.grey[400],
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class FilterBar extends StatelessWidget {
  const FilterBar({
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
            '4 items found',
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

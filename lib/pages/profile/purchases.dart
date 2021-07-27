import 'package:flutter/material.dart';

class Purchases extends StatefulWidget {
  final tabItem = [
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/laugh/laugh_1.jpg'},
    {'image': 'assets/laugh/laugh_1.jpg'},
    {'image': 'assets/laugh/laugh_1.jpg'},
    {'image': 'assets/laugh/laugh_1.jpg'},
    {'image': 'assets/laugh/laugh_1.jpg'},
    {'image': 'assets/laugh/laugh_6.jpg'},
    {'image': 'assets/dance/dance_1.jpg'},
    {'image': 'assets/dance/dance_2.jpg'},
    {'image': 'assets/dance/dance_3.jpg'},
    {'image': 'assets/dance/dance_4.jpg'},
    {'image': 'assets/dance/dance_5.jpg'},
    {'image': 'assets/dance/dance_6.jpg'},
    {'image': 'assets/laugh/laugh_1.jpg'},
    {'image': 'assets/laugh/laugh_2.jpg'},
    {'image': 'assets/laugh/laugh_3.jpg'},
    {'image': 'assets/laugh/laugh_4.jpg'},
    {'image': 'assets/laugh/laugh_5.jpg'},
    {'image': 'assets/laugh/laugh_6.jpg'}
  ];
  @override
  _PurchasesState createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blue,
                  radius: 30,
                ),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Fried Flour With Anchovies Sauce",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "RM 8.90",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                ),
                SizedBox(width: 15),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Curry Puff With Sardine Filling",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "RM 7.40",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:tiktok_ui/theme/colors.dart';

class StoreScreen extends StatefulWidget {
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  bool _isOpen = false;
  PanelController _panelController = PanelController();
  var _imageList = [
    'assets/dance/dance_1.jpg',
    'assets/dance/dance_2.jpg',
    'assets/dance/dance_3.jpg',
    'assets/dance/dance_4.jpg',
    'assets/dance/dance_5.jpg',
    'assets/dance/dance_6.jpg',
    'assets/dance/dance_6.jpg',
    'assets/dance/dance_1.jpg',
    'assets/dance/dance_2.jpg',
    'assets/dance/dance_3.jpg',
    'assets/dance/dance_4.jpg',
    'assets/dance/dance_5.jpg',
    'assets/dance/dance_6.jpg',
    'assets/dance/dance_6.jpg',
  ];

  /// **********************************************
  /// LIFE CYCLE METHODS
  /// **********************************************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/spook.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: appBgColor),
                  ),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: appBgColor,
                  ),
                ),
              ),
            ),
          ),

          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.3,
            child: Container(
              color: Colors.white,
            ),
          ),

          /// Sliding Panel
          SlidingUpPanel(
            controller: _panelController,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(32),
              topLeft: Radius.circular(32),
            ),
            minHeight: MediaQuery.of(context).size.height * 0.35,
            maxHeight: MediaQuery.of(context).size.height * 0.85,
            body: GestureDetector(
              onTap: () => _panelController.close(),
              child: Container(
                color: Colors.transparent,
              ),
            ),
            panelBuilder: (ScrollController controller) =>
                _panelBody(controller),
            onPanelSlide: (value) {
              if (value >= 0.2) {
                if (!_isOpen) {
                  setState(() {
                    _isOpen = true;
                  });
                }
              }
            },
            onPanelClosed: () {
              setState(() {
                _isOpen = false;
              });
            },
          ),
        ],
      ),
    );
  }

  /// **********************************************
  /// WIDGETS
  /// **********************************************
  /// Panel Body
  SingleChildScrollView _panelBody(ScrollController controller) {
    double hPadding = 40;

    return SingleChildScrollView(
      controller: controller,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: hPadding),
            height: MediaQuery.of(context).size.height * 0.35,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _titleSection(),
                _actionSection(hPadding: hPadding),
              ],
            ),
          ),
          GridView.builder(
            primary: false,
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            itemCount: _imageList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 16,
            ),
            itemBuilder: (BuildContext context, int index) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(_imageList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Action Section
  Row _actionSection({double hPadding}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Visibility(
          visible: !_isOpen,
          child: Expanded(
            child: OutlineButton(
              onPressed: () => _panelController.open(),
              borderSide: BorderSide(color: Colors.blue),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
              child: Text(
                'VIEW STORE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: !_isOpen,
          child: SizedBox(
            width: 16,
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: _isOpen
                  ? (MediaQuery.of(context).size.width - (2 * hPadding)) / 1.6
                  : double.infinity,
              child: FlatButton(
                onPressed: () => print('Video call tapped'),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'VIDEO CALL',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: SizedBox(
              width: _isOpen
                  ? (MediaQuery.of(context).size.width - (2 * hPadding)) / 1.6
                  : double.infinity,
              child: FlatButton(
                onPressed: () => print('Chat tapped'),
                color: Colors.blue,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'CHAT',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // /// Info Section
  // Row _infoSection() {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     children: <Widget>[
  //       _infoCell(title: 'Projects', value: '1135'),
  //       Container(
  //         width: 1,
  //         height: 40,
  //         color: Colors.grey,
  //       ),
  //       _infoCell(title: 'Hourly Rate', value: "\$65"),
  //       Container(
  //         width: 1,
  //         height: 40,
  //         color: Colors.grey,
  //       ),
  //       _infoCell(title: 'Location', value: 'Dusseldorf'),
  //     ],
  //   );
  // }

  // /// Info Cell
  // Column _infoCell({String title, String value}) {
  //   return Column(
  //     children: <Widget>[
  //       Text(
  //         title,
  //         style: TextStyle(
  //           fontFamily: 'OpenSans',
  //           fontWeight: FontWeight.w300,
  //           fontSize: 14,
  //         ),
  //       ),
  //       SizedBox(
  //         height: 8,
  //       ),
  //       Text(
  //         value,
  //         style: TextStyle(
  //           fontFamily: 'OpenSans',
  //           fontWeight: FontWeight.w700,
  //           fontSize: 14,
  //         ),
  //       ),
  //     ],
  //   );
  // }

  /// Title Section
  Column _titleSection() {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'shadli.kl',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                decoration: BoxDecoration(
                    color: grey, borderRadius: BorderRadius.circular(14)),
                child: Row(
                  children: [
                    Text(
                      '4.5',
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(width: 5),
                    SvgPicture.asset("assets/icons/Star Icon.svg")
                  ],
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          '016 - 247 3922',
          style: TextStyle(
            fontStyle: FontStyle.italic,
            fontSize: 16,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'D-2-9, Jalan 3/38A, 43650, Bandar Baru Bangi, Malaysia',
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          'Shadli Studio is located in Bandar Baru Bangi',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

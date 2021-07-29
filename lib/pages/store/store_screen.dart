import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/pages/notifications_messages/chat.dart';
import 'package:tiktok_ui/pages/profile/profile_tab_item.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreScreen extends StatefulWidget {
  static const String id = 'store_screen';
  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  static List<String> choices = <String>[
    'View Store Address',
    'Report',
    'Block'
  ];
  bool follow = false;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        backgroundColor: appBgColor,
        body: SafeArea(
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  expandedHeight: 410,
                  pinned: true,
                  forceElevated: true,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.black,
                  elevation: 0.0,
                  leading: IconButton(
                    icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  actions: <Widget>[
                    PopupMenuButton<String>(
                      onSelected: choiceAction,
                      color: Colors.white,
                      itemBuilder: (BuildContext context) {
                        return choices.map((String choice) {
                          return PopupMenuItem<String>(
                            value: choice,
                            child: Text(
                              choice,
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList();
                      },
                    )
                  ],
                  flexibleSpace: FlexibleSpaceBar(
                    background: Container(
                      width: width,
                      height: 410.0,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20.0),
                          bottomRight: Radius.circular(20.0),
                        ),
                        color: Colors.black,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 90.0,
                            width: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(45.0),
                              border:
                                  Border.all(color: Colors.white, width: 2.0),
                              image: DecorationImage(
                                image: AssetImage('assets/spook.png'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'shadli.kl',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10.0),
                              Container(
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 8.0, vertical: 5.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        '4.2',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const SizedBox(width: 5),
                                      SvgPicture.asset(
                                          "assets/icons/Star Icon.svg")
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20.0),
                          Text(
                            'Shadli Studio is located in Bangi',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 5.0),
                          Text(
                            '016 - 249 8532',
                            style: TextStyle(
                              fontSize: 12.0,
                              fontWeight: FontWeight.normal,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(height: 15.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              InkWell(
                                borderRadius: BorderRadius.circular(5.0),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      PageTransition(
                                          type: PageTransitionType.rightToLeft,
                                          child: ChatScreen()));
                                },
                                child: Container(
                                  width: 120.0,
                                  height: 35.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: red, width: 2.0),
                                    color: red,
                                  ),
                                  child: Text(
                                    'Chat',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(5.0),
                                onTap: () {},
                                child: Container(
                                  width: 120.0,
                                  height: 35.0,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(color: red, width: 2.0),
                                    color: Colors.black,
                                  ),
                                  child: Text(
                                    'Video Call',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w600,
                                      color: grey,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15.0,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.0),
                        ],
                      ),
                    ),
                  ),
                  bottom: TabBar(
                    tabs: [
                      Tab(
                        child: Icon(Icons.dashboard, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ];
            },
            body: TabBarView(
              children: [
                ProfileTabItem(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == 'Report') {
      print('Report');
    } else if (choice == 'Block') {
      print('Block');
    } else if (choice == 'View Store Address') {
      print('Store Address');
    }
  }
}

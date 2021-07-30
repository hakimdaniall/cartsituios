import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/pages/login_signup/login.dart';
import 'package:tiktok_ui/pages/login_signup/register.dart';
import 'package:tiktok_ui/pages/profile/edit_profile.dart';
import 'package:tiktok_ui/pages/profile/profile_setting.dart';
import 'package:tiktok_ui/pages/profile/profile_tab_item.dart';
import 'package:tiktok_ui/pages/profile/profile_tab_item_chats.dart';
import 'package:tiktok_ui/pages/profile/profile_tab_item_purchases.dart';
import 'package:tiktok_ui/pages/profile/profile_tab_item_my_reviews.dart';
import 'package:tiktok_ui/pages/profile/term_of_use.dart';
import 'package:url_launcher/url_launcher.dart';
import '../login_signup/register.dart';
import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  static List<String> choices = <String>[
    'Edit User Profile',
    'Register My Store'
  ];

  logoutDialogue() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        // return object of type Dialog
        return Dialog(
          elevation: 0.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          child: Container(
            height: 130.0,
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "You sure want to logout?",
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width / 3.5),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Container(
                        width: (MediaQuery.of(context).size.width / 3.5),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Text(
                          'Log out',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 250,
                pinned: true,
                forceElevated: true,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.black,
                elevation: 0.0,
                actions: <Widget>[
                  PopupMenuButton<String>(
                    onSelected: choiceAction,
                    color: Colors.white,
                    itemBuilder: (BuildContext context) {
                      return choices.map((String choice) {
                        return PopupMenuItem<String>(
                          value: choice,
                          child: Row(
                            children: [
                              Icon(
                                (choice == 'Edit User Profile')
                                    ? Icons.perm_identity
                                    : Icons.store_mall_directory_sharp,
                                color: Colors.black,
                                size: 18.0,
                              ),
                              SizedBox(width: 5.0),
                              Text(
                                choice,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        );
                      }).toList();
                    },
                  ),
                ],
                flexibleSpace: FlexibleSpaceBar(
                  background: Container(
                    width: width,
                    height: 390.0,
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
                          height: 120.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100.0),
                            border: Border.all(color: Colors.white, width: 2.0),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/user_profile/user_3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Allison Perry',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 20.0),
                      ],
                    ),
                  ),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      child: Text(
                        'Chats',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Purchases',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'My Reviews',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 60.7),
                child: ProfileTabItemChats(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60.7),
                child: ProfileTabItemPurchases(),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 60.7),
                child: ProfileTabItemMyReviews(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void choiceAction(String choice) {
    if (choice == 'Edit User Profile') {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft, child: EditProfile()));
    } else if (choice == 'Register My Store') {
      Navigator.push(
          context,
          PageTransition(
              type: PageTransitionType.rightToLeft, child: Register()));
    }
  }
}

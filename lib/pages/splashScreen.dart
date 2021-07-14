import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/login_signup/login.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/pages/login_signup/register.dart';
import 'package:tiktok_ui/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 300),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Login()),
            ));
  }
  
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/cartbg.jpg'), fit: BoxFit.cover),
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            left: 0.0,
            child: Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1, 0.3, 0.5, 0.7, 0.9],
                  colors: [
                    Colors.black.withOpacity(0.4),
                    Colors.black.withOpacity(0.55),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(1.0),
                  ],
                ),
              ),
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                        child: Positioned(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                              'Shopping,',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                              SizedBox(height: 20.0),
                              Text('Better Than Ever Before',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Text('Watch product or video live stream from your favourite sellers and buy on the spot!',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize:14.0
                              ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30.0),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.rightToLeft,
                                            child: Register()));
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.bottomRight,
                                        stops: [0.1, 0.5, 0.9],
                                        colors: [
                                          Colors.white.withOpacity(0.8),
                                          Colors.white.withOpacity(0.8),
                                          Colors.white.withOpacity(0.8),
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      'Login',
                                      style: TextStyle(
                                        color: primary,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20.0),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(30.0),
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        PageTransition(
                                            type: PageTransitionType.rightToLeft,
                                            child: Register()));
                                  },
                                  child: Container(
                                    height: 50.0,
                                    width: double.infinity,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30.0),
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.bottomRight,
                                        stops: [0.1, 0.5, 0.9],
                                        colors: [
                                          Colors.red[300].withOpacity(0.8),
                                          Colors.red[500].withOpacity(0.8),
                                          Colors.red[800].withOpacity(0.8),
                                        ],
                                      ),
                                    ),
                                    child: Text(
                                      'Register',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                    ),
                ),
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

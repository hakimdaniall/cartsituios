import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tiktok_ui/pages/login_signup/login.dart';
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
        Duration(seconds: 1),
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
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Shopping,',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Better Than Ever Before',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                'Watch product or video live stream from your favourite sellers and buy on the spot!',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15.0,
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
                                  height: 53.0,
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
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w700,
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
                                  height: 53.0,
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
                                    'Sign Up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22.0,
                                      fontWeight: FontWeight.w600,
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

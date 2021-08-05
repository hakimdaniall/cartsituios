import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tiktok_ui/pages/login_signup/otp.dart';
import 'package:tiktok_ui/theme/colors.dart';

import '../home.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showSpinner = false;

  final _auth = FirebaseAuth.instance;

  String email;

  String password;

  String confirmpassword;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/registerbg.jpg'), fit: BoxFit.cover),
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
            ),
          ),
          Positioned(
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                leading: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: grey,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                backgroundColor: Colors.transparent,
                elevation: 0.0,
              ),
              body: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 60.0, left: 20.0),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Create account',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 50.0),
                  // Padding(
                  //   padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[200].withOpacity(0.3),
                  //       borderRadius: BorderRadius.all(
                  //         Radius.circular(20.0),
                  //       ),
                  //     ),
                  //     child: Padding(
                  //       padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  //       child: InternationalPhoneNumberInput(
                  //         textStyle: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 16.0,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //         errorMessage: 'Invalid Phone Number',
                  //         autoValidate: false,
                  //         selectorTextStyle: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 16.0,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //         inputBorder: InputBorder.none,
                  //         inputDecoration: InputDecoration(
                  //           border: InputBorder.none,
                  //           contentPadding: EdgeInsets.only(left: 20.0),
                  //           hintText: 'Phone Number',
                  //           hintStyle: TextStyle(
                  //               color: Colors.white,
                  //               fontSize: 16.0,
                  //               fontWeight: FontWeight.w500),
                  //         ),
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20.0),
                  // Padding(
                  //   padding: EdgeInsets.only(right: 20.0, left: 20.0),
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       color: Colors.grey[200].withOpacity(0.3),
                  //       borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //     ),
                  //     child: TextField(
                  //       style: TextStyle(
                  //         color: Colors.white,
                  //         fontSize: 16.0,
                  //         fontWeight: FontWeight.w500,
                  //       ),
                  //       decoration: InputDecoration(
                  //         contentPadding: EdgeInsets.only(left: 20.0),
                  //         hintText: 'Username',
                  //         hintStyle: TextStyle(
                  //           color: Colors.white,
                  //           fontSize: 16.0,
                  //           fontWeight: FontWeight.w500,
                  //         ),
                  //         border: InputBorder.none,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, left: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200].withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        validator: (value) =>
                            value.isEmpty ? 'Enter an email' : null,
                        onChanged: (value) {
                          email = value;
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20.0),
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, left: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200].withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        onChanged: (value) {
                          password = value;
                        },
                        validator: (value) => value.length < 6
                            ? 'Enter a password 6+ chars long'
                            : null,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20.0),
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0, left: 20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[200].withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      ),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        onChanged: (value) {
                          confirmpassword = value;
                        },
                        validator: (value) =>
                            value != password ? 'Password did not match' : null,
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20.0),
                          hintText: 'Confirm Password',
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40.0),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(30.0),
                      onTap: () async {
                        setState(() {
                          showSpinner = true;
                        });
                        try {
                          if (password == confirmpassword) {
                            final newUser =
                                await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                            if (newUser != null) {
                              Navigator.pushNamed(context, Home.id);
                            }
                            setState(() {
                              showSpinner = false;
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('The password did not match.')));
                            setState(() {
                              showSpinner = false;
                            });
                          }
                        } on FirebaseAuthException catch (e) {
                          if (email == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Please enter your email')));
                          } else if (password == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text('Please enter your password')));
                          } else if (confirmpassword == null) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content:
                                    Text('Please re-enter your password')));
                          } else if (e.code == 'invalid-email') {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'Incorrect e-mail type. Please enter the correct e-mail')));
                          } else if (e.code == 'weak-password') {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'The password provided is too weak.')));
                          } else if (e.code == 'email-already-in-use') {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Text(
                                    'The account already exists for that email.')));
                          }
                          setState(() {
                            showSpinner = false;
                          });
                        }
                      },
                      child: Container(
                        height: 50.0,
                        width: double.infinity,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            stops: [0.1, 0.9],
                            colors: [
                              Color(0xFFFC2D55).withOpacity(0.8),
                              Color(0xFF712E3E).withOpacity(0.8),
                            ],
                          ),
                        ),
                        child: Text(
                          'Continue',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

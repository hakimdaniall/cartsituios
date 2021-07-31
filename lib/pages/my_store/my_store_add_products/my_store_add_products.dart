import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tiktok_ui/theme/colors.dart';
import 'package:dotted_border/dotted_border.dart';

class AddMyStoreProducts extends StatefulWidget {
  static const String id = 'add_my_store_products';
  @override
  _AddMyStoreProductsState createState() => _AddMyStoreProductsState();
}

class _AddMyStoreProductsState extends State<AddMyStoreProducts> {
  String name = '';
  String number = '';
  String email = '';
  String userAddressLine1 = '';
  String userAddressLine2 = '';
  String userAddressCity = '';
  String userAddressPostcode = '';
  String userAddressState = '';
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var emailController = TextEditingController();
  var userAddressLine1Controller = TextEditingController();
  var userAddressLine2Controller = TextEditingController();
  var userAddressCityController = TextEditingController();
  var userAddressPostcodeController = TextEditingController();
  var userAddressStateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    nameController.text = name;
    phoneController.text = number;
    emailController.text = email;
    userAddressLine1Controller.text = userAddressLine1;
    userAddressLine2Controller.text = userAddressLine2;
    userAddressCityController.text = userAddressCity;
    userAddressPostcodeController.text = userAddressPostcode;
    userAddressStateController.text = userAddressState;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    addProductName() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Product Name",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: nameController,
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Product Name',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            name = nameController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductDescription() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Product Description",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Product Description',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = nameController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductKeyword() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Product Keyword",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Product Keyword',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = nameController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductRelatedKey() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Product Related Key",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Enter Your Product Related Key',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = nameController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductPrice() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add Product Price",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Product Price (RM)',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = phoneController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductSalePrice() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add Product Sale Price",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Product Sale Price (RM)',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = phoneController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductWeight() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 210.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add Product Weight",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Product Weight (Kg)',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = phoneController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addPackageSize() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 300.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add Package Size (cm)",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Package Width',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Package Height',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Package Length',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = phoneController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    addProductFeatures() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          // return object of type Dialog
          return Dialog(
            elevation: 0.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Container(
              height: 250.0,
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Add Package Features",
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Feature Name',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    cursorColor: Colors.black,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: 'Enter Feature Value (RM)',
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            number = phoneController.text;
                            Navigator.pop(context);
                          });
                        },
                        child: Container(
                          width: (width / 3.5),
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Text(
                            'Save',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
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

    showUploadImageActionSheet() {
      return showCupertinoModalPopup(
        context: context,
        builder: (BuildContext context) => CupertinoActionSheet(
            title: Text('Choose Options',
                style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white)),
            message: Text('Your options are'),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text('Camera'),
                onPressed: () {},
              ),
              CupertinoActionSheetAction(
                child: Text('Choose from Gallery'),
                onPressed: () {},
              )
            ],
            cancelButton: CupertinoActionSheetAction(
              child: Text('Cancel'),
              isDefaultAction: true,
              onPressed: () {
                Navigator.pop(context, 'Cancel');
              },
            )),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
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
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Add Product',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            color: grey,
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[
          SizedBox(height: 10.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                width: width - 30.0,
                margin: EdgeInsets.only(right: 20.0, left: 20.0),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              'Product Name',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            addProductName();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 15.0),
                            Text(
                              'Product Description',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            addProductDescription();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget> [
                        Container(
                          height: 200.0,
                          width: 200.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            image: DecorationImage(
                              image: AssetImage('assets/user_profile/user_3.jpg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: InkWell(
                            onTap: () {
                              showUploadImageActionSheet();
                            },
                            child: Container(
                              height: 100.0,
                              width: 100.0,
                              color: Colors.black.withOpacity(0.5),
                              child: Icon(
                                Icons.add_a_photo,
                                color: Colors.white,
                                size: 25.0,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget> [
                            Row(
                              children: <Widget> [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.check_box_outline_blank_rounded,
                                    color: Color(0xFFFC2D55),
                                    size: 25.0,
                                  ),
                                ),
                                Text(
                                  'Disable Product',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Keywords',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            DottedBorder(
                              borderType: BorderType.RRect,
                              color: Color(0xFFFC2D55),
                              dashPattern: [7, 4],
                              radius: Radius.circular(15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                child: Container(
                                  height: 33,
                                  width: 120,
                                  color: Colors.black,
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {
                                      addProductKeyword();
                                    },
                                    child: Text(
                                      'Add Keyword',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Related Keys',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            DottedBorder(
                              borderType: BorderType.RRect,
                              color: Color(0xFFFC2D55),
                              dashPattern: [7, 4],
                              radius: Radius.circular(15),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                child: Container(
                                  height: 33,
                                  width: 140,
                                  color: Colors.black,
                                  alignment: Alignment.center,
                                  child: TextButton(
                                    onPressed: () {
                                      addProductRelatedKey();
                                    },
                                    child: Text(
                                      'Add Related Key',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget> [
                            Row(
                              children: <Widget> [
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.check_box_outline_blank_rounded,
                                    color: Color(0xFFFC2D55),
                                    size: 25.0,
                                  ),
                                ),
                                Text(
                                  'Has Variation',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Normal Price',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'RM',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            addProductPrice();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Sale Price',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'RM',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            addProductSalePrice();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Weight',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'Kg',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            addProductWeight();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Package Size',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            Text(
                              'WxHxL cm',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            addPackageSize();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Barcode',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10.0),
                          ],
                        ),
                        IconButton(
                          onPressed: () {
                            showUploadImageActionSheet();
                          },
                          icon: Icon(
                            Icons.edit,
                            color: Colors.grey[400],
                            size: 25.0,
                          ),
                        ),
                      ],
                    ),
                    Divider(
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Text(
                          'Variation Image',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.only(bottom: 5.0),
                          onPressed: () {
                            showUploadImageActionSheet();
                          },
                          icon: Icon(
                            Icons.add_photo_alternate_outlined,
                            color: Color(0xFFFC2D55),
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget> [
                        Text(
                          'Features',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        IconButton(
                          padding: EdgeInsets.only(bottom: 5.0),
                          onPressed: () {
                            addProductFeatures();
                          },
                          icon: Icon(
                            Icons.add_circle_rounded,
                            color: Color(0xFFFC2D55),
                            size: 40.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:project/screen/%20Admin/Product_Screen.dart';
import 'package:project/screen/Customer/Exhibitions_Screen.dart';
import 'package:project/screen/Customer/companies_screen.dart';
import 'package:project/screen/Register.dart';
import 'package:project/screen/login.dart';


void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ProductAdmin()
    );
  }
}


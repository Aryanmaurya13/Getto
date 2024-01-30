import 'package:flutter/material.dart';
import 'package:getto/accountsidescreen/termsandpolicy_view.dart';
import 'package:getto/login/address.dart';
import 'package:getto/login/details.dart';
import 'package:getto/login/permission.dart';
import 'package:getto/login/verify.dart';
import 'package:getto/mainscreens/cart.dart';
import 'package:getto/mainscreens/home.dart';
import 'package:getto/onboard/location.dart';
import 'package:getto/sectionpages/footwear.dart';
import 'package:getto/sectionpages/productdetails.dart';

import 'login/login.dart';
import 'onboard/splash.dart';

void main() {
  runApp(const MyApp());
}
int? isviewed;
class MyApp extends StatelessWidget {
  const MyApp({super.key});


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Outfit',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: slash(),
    );
  }
}


extension ColorExtension on String {
  toColor() {
    var hexColor = this.replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    if (hexColor.length == 8) {
      return Color(int.parse("0x$hexColor"));
    }
  }
}

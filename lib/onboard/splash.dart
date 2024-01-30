import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/mainscreens/home.dart';

import 'onboard.dart';

class slash extends StatefulWidget {
  const slash({super.key});

  @override
  State<slash> createState() => _slashState();
}

class _slashState extends State<slash> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2, microseconds: 50),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) =>
            isviewed != 0 ? Onboard() : homes()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 90.0 , right: 90),
          child: Image.asset('assets/splash.png' , width: double.maxFinite,),
        ),

      ),
    );
  }
}

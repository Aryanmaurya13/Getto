import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../mainscreens/home.dart';

class placed extends StatefulWidget {
  const placed({super.key});

  @override
  State<placed> createState() => _placedState();
}

class _placedState extends State<placed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0 , right: 20),
          child: Column(
            children: [
              Spacer(),
              Center(child: Image.asset('assets/done.png' , height: 170,width: 170,)),
              SizedBox(height: 20,),
              Text('Your Order has been\nAccepted' ,textAlign: TextAlign.center, style: TextStyle(fontSize: 26 , fontWeight: FontWeight.w500),),
              SizedBox(height: 30,),
              Text('Your items has been placcd and is on it’s way to being processed' ,textAlign: TextAlign.center, style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w400 , color: '555555'.toColor()),),
              SizedBox(height: 137,),
              GestureDetector(
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: homes(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 64,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                      gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                  ),
                  child: Center(child: Text('Track Order' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                ),
              ),
              GestureDetector(
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: homes(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 31.0 , bottom: 49),
                  child: Text('Back to Home' , style: TextStyle(fontWeight: FontWeight.w600  , fontSize: 16),),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

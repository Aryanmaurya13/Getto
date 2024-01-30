import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../onboard/location.dart';

class permission extends StatefulWidget {
  const permission({super.key});

  @override
  State<permission> createState() => _permissionState();
}

class _permissionState extends State<permission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0 , right: 30 , bottom: 30),
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/5,),
              Center(child: Image.asset('assets/illustration.png' , height: 192,width:253 ,)),
              SizedBox(height: 40,),
              Text('Location Permission is off' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 20),),
              SizedBox(height: 14),
              Text('We need your location to show available stores \nand products' ,textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),),
             Spacer(),
              GestureDetector(
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: location(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 64,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight:Radius.circular(15),bottomLeft: Radius.circular(15), ),
                      gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                  ),
                  child: Center(child: Text('Enable Location' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: location(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 64,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),),
                    border: Border.all(color: 'F4F5FA'.toColor())

                  ),
                  child: Center(child: Text('Not Now' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18),)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

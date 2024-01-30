import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/login.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../accountsidescreen/addresses.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {

  setint() async {
    SharedPreferences pre = await SharedPreferences.getInstance();
    //pre.setInt("onboardint", 1);

  }
 int image = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(alignment: AlignmentDirectional.bottomStart,
                  children: [
                    Image.asset((image ==0)?'assets/onboard1.png':(image ==1)?'assets/onboard2.png':'assets/onboard3.png'  ,width: double.maxFinite,),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          (image ==0)?Text('Classy From Head \nto Toe' , style: TextStyle(color: Colors.white , fontSize: 30 , fontWeight: FontWeight.w600),):
                          (image ==1)?Text('Fly Away with  \nYour Style' , style: TextStyle(color: Colors.white , fontSize: 30 , fontWeight: FontWeight.w600),):
                          Text('Clothes For a Big \nPlanet' , style: TextStyle(color: Colors.white , fontSize: 30 , fontWeight: FontWeight.w600),),
                          SizedBox(height: 8,),
                          Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore ' ,
                            style: TextStyle(color: Colors.white , fontWeight: FontWeight.w400 , fontSize: 14),)
                        ],
                      ),
                    )
                  ],
                )
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 9,width: (image ==0)?30:9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(colors: [(image ==0)?'00D0BB'.toColor():'E1F4F2'.toColor(),(image ==0)?'007EA9'.toColor():'E1F4F2'.toColor()])
                  ),
                ),
                SizedBox(width: 6,),
                Container(height: 9,width: (image ==1)?30:9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [(image ==1)?'00D0BB'.toColor():'E1F4F2'.toColor(),(image ==1)?'007EA9'.toColor():'E1F4F2'.toColor()])
                  ),
                ),
                SizedBox(width: 6,),
                Container(height: 9,width: (image ==2)?30:9,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: LinearGradient(colors: [(image ==2)?'00D0BB'.toColor():'E1F4F2'.toColor(),(image ==2)?'007EA9'.toColor():'E1F4F2'.toColor()])
                  ),
                ),
              ],
            ),

            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 30.0 , right: 30 , bottom: 30),
              child: Row(mainAxisAlignment: (image ==2)?MainAxisAlignment.center:MainAxisAlignment.spaceBetween,
                children: [
                  (image ==2)?SizedBox(width: 0,):Container(
                    height: 64,
                    width: 140,

                    child: Center(child: Text('Skip'  ,style: TextStyle( fontSize: 18  ,fontWeight: FontWeight.w500),)),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                       image = image+1;
                      });
                      (image ==3)?PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: login(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      ):(){

                      };
                    },
                    child: Container(
                      height: 64,
                      width: (image ==2)?300:140,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight:Radius.circular(15),bottomLeft: Radius.circular(15), ),
                        gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                      ),
                      child: Center(child: Text((image == 2)?'Get Started':'Next' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w500),)),
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

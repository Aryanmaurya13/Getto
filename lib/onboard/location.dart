import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/address.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class location extends StatefulWidget {
  const location({super.key});

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(alignment: AlignmentDirectional.bottomCenter,
              children: [
                Image.asset('assets/location.png' , height: MediaQuery.of(context).size.height,width:MediaQuery.of(context).size.width , fit: BoxFit.fill,),
                Container(height: MediaQuery.of(context).size.height,
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 56.0 , right: 20 , left: 20),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)
                                ),
                                child: Center(child: Icon(Icons.arrow_back_outlined , size: 24,))),
                            Text('Select Location' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                            SizedBox(width: 50 ,)
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height/2.6,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 30.0 , left: 30 , right: 30),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Delivery Location' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),),
                              SizedBox(height: 20,),
                              Container(
                                height: 64,
                                width: double.maxFinite,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(15) , bottomLeft:Radius.circular(15),bottomRight: Radius.circular(15) ),
                                    border: Border.all(color: 'EDEFFA'.toColor())

                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Dwarka Sector 12, Delhi -  110078' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),),
                                      Image.asset('assets/gps.png' , height: 18 , width: 18,)
                                    ],
                                  ),
                                ),
                              ),
                              Spacer(),
                              GestureDetector(
                                onTap: (){
                                  PersistentNavBarNavigator.pushNewScreen(
                                    context,
                                    screen: address(),
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
                                  child: Center(child: Text('Confirm Location' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                                ),
                              ),
                              SizedBox(height: 20,)


                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

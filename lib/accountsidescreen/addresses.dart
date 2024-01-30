import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/accountsidescreen/addsddress.dart';
import 'package:getto/main.dart';
import 'package:getto/mainscreens/home.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class addresses extends StatefulWidget {
  const addresses({super.key});

  @override
  State<addresses> createState() => _addressesState();
}

class _addressesState extends State<addresses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0 , right:20 , top: 55),
          child: Column(
            children: [

              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: (){
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: homes(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      );

                    },
                      child: Icon(Icons.arrow_back_ios_new , size: 20,)),
                  Center(child: Text('Addresses' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                  SizedBox(width: 20,)
                ],
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  PersistentNavBarNavigator.pushNewScreen(
                    context,
                    screen: addaddress(),
                    withNavBar: false, // OPTIONAL VALUE. True by default.
                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                  );
                },
                child: Container(
                  height: 65,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: ['00D0BB'.toColor(),'007EA9'.toColor()]),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20 , right: 20),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.add , color: Colors.white, size: 20,),
                            SizedBox(width: 12,),
                            Text('Add New Address' , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500 , fontSize: 16),),
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined, color: Colors.white,size: 20,),
                      ],

                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.06),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0 , right: 16 , left: 16),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/homeicon.png',height: 16,),
                              SizedBox(width: 12,),
                              Text('Home' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Image.asset('assets/dots.png' , width: 24,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 , top: 7),
                        child: Text('WZ-123, Block A, West Janakpuri, \nNew Delhi - 110053' , style: TextStyle(color: '555555'.toColor() , fontWeight: FontWeight.w400 , fontSize: 14),),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.06),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0 , right: 16 , left: 16),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/Work.png',height: 16,),
                              SizedBox(width: 12,),
                              Text('Office' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Image.asset('assets/dots.png' , width: 24,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 , top: 7),
                        child: Text('Star Mall Sector 30, NH-8, \nGurugram, Haryana 122001' , style: TextStyle(color: '555555'.toColor() , fontWeight: FontWeight.w400 , fontSize: 14),),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.06),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0 , right: 16 , left: 16),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/appartment.png',height: 16,),
                              SizedBox(width: 12,),
                              Text('Appartment' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Image.asset('assets/dots.png' , width: 24,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 , top: 7),
                        child: Text('B-121- Dwarka Kunj, Sector 12, \nPocket 5 New Delhi - 110023' , style: TextStyle(color: '555555'.toColor() , fontWeight: FontWeight.w400 , fontSize: 14),),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                height: 100,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.06),
                      spreadRadius: 0,
                      blurRadius: 7,
                      offset: Offset(0, 5), // changes position of shadow
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 12.0 , right: 16 , left: 16),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/homeicon.png',height: 16,),
                              SizedBox(width: 12,),
                              Text('Home' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                            ],
                          ),
                          Image.asset('assets/dots.png' , width: 24,),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 25.0 , top: 7),
                        child: Text('WZ-123, Block A, West Janakpuri, \nNew Delhi - 110053' , style: TextStyle(color: '555555'.toColor() , fontWeight: FontWeight.w400 , fontSize: 14),),
                      )

                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
}}

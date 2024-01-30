import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/address.dart';
import 'package:getto/main.dart';
import 'package:getto/order/myorders.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../accountsidescreen/addresses.dart';
import '../accountsidescreen/termsandpolicy_view.dart';

class account extends StatefulWidget {
  const account({super.key});

  @override
  State<account> createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0 , right:20 , top: 55),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: Text('My Account' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                SizedBox(height: 27,),
                Center(child: Image.asset('assets/profile.png' , height: 116,)),
                SizedBox(height: 16,),
                Center(child: Text('Vishal Singh', style: TextStyle(fontSize: 16  ,fontWeight: FontWeight.w600),)),
                SizedBox(height: 6,),
                Center(child: Text('+91 98272 63526', style: TextStyle(fontSize: 15  ,fontWeight: FontWeight.w500))),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: myorders(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Container(height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                            color: 'F4F5FA'.toColor(),


                        ),
                          child: Column(
                            children: [
                              SizedBox(height: 18,),
                              Image.asset('assets/orderaccount.png' , height: 32,),
                              SizedBox(height: 16,),
                              Text('My Orders' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),)
                            ],
                          )),
                      ),
                    ),
                    SizedBox(width: 14,),
                    Expanded(
                      child: Container(height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                            color: 'F4F5FA'.toColor(),
        
        
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 18,),
                              Image.asset('assets/Card.png' , height: 32,),
                              SizedBox(height: 16,),
                              Text('Payment' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),)
                            ],
                          )),
                    ),
                    SizedBox(width: 14,),
                    Expanded(
                      child: Container(height: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                            color: 'F4F5FA'.toColor(),
        
        
                          ),
                          child: Column(
                            children: [
                              SizedBox(height: 18,),
                              Image.asset('assets/Chat 4.png' , height: 32,),
                              SizedBox(height: 16,),
                              Text('Support' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),)
                            ],
                          )),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Container(height: 256,width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:'F4F5FA'.toColor(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0 , right: 24 , top: 20),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 40,width: 40,
                                  decoration:BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                  ),
                                    child: Container(child: Center(child: Image.asset('assets/bottom/Buy.png' , height: 20,)))),
                                SizedBox(width: 18,),
                                Text('Cart' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,width: 40,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Container(child: Center(child: Image.asset('assets/Heart.png' , height: 20,)))),
                                SizedBox(width: 18,),
                                Text('Wishlist' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,width: 40,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Container(child: Center(child: Image.asset('assets/Notificationp.png' , height: 20,)))),
                                SizedBox(width: 18,),
                                Text('Notifications' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                          ],
                        ),
                        SizedBox(height: 18,),
                        GestureDetector(
                          onTap: (){
                            PersistentNavBarNavigator.pushNewScreen(
                              context,
                              screen: addresses(),
                              withNavBar: false, // OPTIONAL VALUE. True by default.
                              pageTransitionAnimation: PageTransitionAnimation.cupertino,
                            );

                          },
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 40,width: 40,
                                      decoration:BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Container(child: Center(child: Image.asset('assets/Locationp.png' , height: 20,)))),
                                  SizedBox(width: 18,),
                                  Text('Addresses' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(height: 256,width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:'F4F5FA'.toColor(),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0 , right: 24 , top: 20),
                    child: Column(
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,width: 40,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Container(child: Center(child: Image.asset('assets/share.png' , height: 20,)))),
                                SizedBox(width: 18,),
                                Text('Share the App' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,width: 40,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Container(child: Center(child: Image.asset('assets/Star 5.png' , height: 20,)))),
                                SizedBox(width: 18,),
                                Text('Rate Us' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                          ],
                        ),
                        SizedBox(height: 18,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Container(
                                    height: 40,width: 40,
                                    decoration:BoxDecoration(
                                        color:Colors.white,
                                        borderRadius: BorderRadius.circular(20)
                                    ),
                                    child: Container(child: Center(child: Image.asset('assets/Settinga.png' , height: 20,)))),
                                SizedBox(width: 18,),
                                Text('Settings' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                              ],
                            ),
                            Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                          ],
                        ),
                        SizedBox(height: 18,),
                        GestureDetector(

                              onTap: (){
                                PersistentNavBarNavigator.pushNewScreen(
                                  context,
                                  screen: TermsAndPolicy_view(),
                                  withNavBar: false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                );

                              },

                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 40,width: 40,
                                      decoration:BoxDecoration(
                                          color:Colors.white,
                                          borderRadius: BorderRadius.circular(20)
                                      ),
                                      child: Container(child: Center(child: Image.asset('assets/terms.png' , height: 20,)))),
                                  SizedBox(width: 18,),
                                  Text('Terms & Policies' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                                ],
                              ),
                              Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 80,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:'F4F5FA'.toColor(),
                   ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0 , right:20 ),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                                height: 40,width: 40,
                                decoration:BoxDecoration(
                                    color:Colors.white,
                                    borderRadius: BorderRadius.circular(20)
                                ),
                                child: Container(child: Center(child: Image.asset('assets/logout.png' , height: 20,)))),
                            SizedBox(width: 18,),
                            Text('Logout' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400),)
                          ],
                        ),
                        Icon(Icons.arrow_forward_ios_outlined , size: 15,),
                      ],
                    ),
                  ),

                ),
                SizedBox(height: 50,),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}

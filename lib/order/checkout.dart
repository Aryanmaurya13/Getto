import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/mainscreens/home.dart';
import 'package:getto/order/coupons.dart';
import 'package:getto/order/placed.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class checkout extends StatefulWidget {
  const checkout({super.key});

  @override
  State<checkout> createState() => _checkoutState();
}

class _checkoutState extends State<checkout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(  top: 55),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap:(){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: homes(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
          },
                          child: Icon(Icons.arrow_back_outlined, size: 20,)),
                      Text('Checkout' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                      SizedBox(width: 20,)

                    ],
                  ),
                ),
                SizedBox(height: 33,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/shirt1.png' , height: 110 , width: 110,),
                      SizedBox(width: 18,),
                      Expanded(
                        child: Column(
                          children: [
                            Row(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w400)),
                                Icon(Icons.close , size: 24, color: '999999'.toColor(),)
                              ],
                            ),
                            SizedBox(height: 28,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 34,width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: '777777'.toColor(),),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),)

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0 ,right:10 ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('-' , style: TextStyle(fontSize: 18 , color: '777777'.toColor() , fontWeight: FontWeight.w600),),
                                        Text('1' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600),),
                                        Text('+' , style: TextStyle(fontSize: 18 , color: '777777'.toColor() , fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text('Rs 769' ,style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15),),
                                    Text('Rs 1799' ,style: TextStyle(fontWeight: FontWeight.w400 ,decoration: TextDecoration.lineThrough , fontSize: 13 , color: '999999'.toColor()),),

                                  ],
                                )
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0 , bottom: 25 , left: 20 , right: 20),
                  child: Divider(color: 'EDEFFA'.toColor(),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/shirt2.png' , height: 110 , width: 110,),
                      SizedBox(width: 18,),
                      Expanded(
                        child: Column(
                          children: [
                            Row(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Men Olive Green Solid \nSweatshirt' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w400)),
                                Icon(Icons.close , size: 24, color: '999999'.toColor(),)
                              ],
                            ),
                            SizedBox(height: 28,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 34,width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: '777777'.toColor(),),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),)

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0 ,right:10 ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('-' , style: TextStyle(fontSize: 18 , color: '777777'.toColor() , fontWeight: FontWeight.w600),),
                                        Text('1' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600),),
                                        Text('+' , style: TextStyle(fontSize: 18 , color: '777777'.toColor() , fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text('Rs 714' ,style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15),),
                                    Text('Rs 1399' ,style: TextStyle(fontWeight: FontWeight.w400 ,decoration: TextDecoration.lineThrough , fontSize: 13 , color: '999999'.toColor()),),

                                  ],
                                )
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0 , bottom: 25 , left: 20 , right: 20),
                  child: Divider(color: 'EDEFFA'.toColor(),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Row(
                    children: [
                      Image.asset('assets/shirt1.png' , height: 110 , width: 110,),
                      SizedBox(width: 18,),
                      Expanded(
                        child: Column(
                          children: [
                            Row(crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Men Grey Clean Look \nStretchable Jeans' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w400)),
                                Icon(Icons.close , size: 24, color: '999999'.toColor(),)
                              ],
                            ),
                            SizedBox(height: 28,),
                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 34,width: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: '777777'.toColor(),),
                                      borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),)

                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 10.0 ,right:10 ),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('-' , style: TextStyle(fontSize: 18 , color: '777777'.toColor() , fontWeight: FontWeight.w600),),
                                        Text('1' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w600),),
                                        Text('+' , style: TextStyle(fontSize: 18 , color: '777777'.toColor() , fontWeight: FontWeight.w600),),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Text('Rs 1920' ,style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15),),
                                    Text('Rs 3450' ,style: TextStyle(fontWeight: FontWeight.w400 ,decoration: TextDecoration.lineThrough , fontSize: 13 , color: '999999'.toColor()),),

                                  ],
                                )
                              ],
                            )

                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0 , bottom: 25 , left: 20 , right: 20),
                  child: Divider(color: 'EDEFFA'.toColor(),),
                ),
                Divider(color: 'F4F5FA'.toColor(),thickness: 6,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20 , bottom: 25 , top: 25),
                  child: Text('Order Summary' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 18),),
                ),
                GestureDetector(
                    onTap: (){
                      PersistentNavBarNavigator.pushNewScreen(
                        context,
                        screen: coupons(),
                        withNavBar: false, // OPTIONAL VALUE. True by default.
                        pageTransitionAnimation: PageTransitionAnimation.cupertino,
                      );

                    },
                    child: Image.asset('assets/coupons.png')),
                SizedBox(height: 25,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Column(
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Subtotal' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),),
                          Row(
                            children: [
                              Text('Rs 940  ' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13 , color: '999999'.toColor(),decoration: TextDecoration.lineThrough),),
                              Text(' Rs 650' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '999999'.toColor()),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Handling Charge' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                          Row(
                            children: [
                              Text('Rs 30  ' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13 , color: '555555'.toColor(),decoration: TextDecoration.lineThrough),),
                              Text(' Rs 15' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '00D0BB'.toColor()),),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Delivery Charges' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                          Text('Rs 30' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13 , color: '555555'.toColor()),),
                        ],
                      ),
                      SizedBox(height: 18,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text('Coupon ' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                              Text('(Free Shipping)' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '0185AB'.toColor()),),
                            ],
                          ),
                          Text('- Rs 90' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13 , color: '555555'.toColor()),),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:15.0 , bottom: 15),
                        child: Divider(
                          color: 'F4F5FA'.toColor(),
                        ),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Payable Amount' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),),
                          Text(' Rs 650' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16 ),),
                        ],
                      ),
                      SizedBox(height: 25,),
                    ],
                  ),
                ),
                Divider(color: 'F4F5FA'.toColor(),thickness: 6,),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Text('Payment Method' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                      SizedBox(height: 32,),
                      Row(
                        children: [
                          Image.asset('assets/creditcard.png' , width: 37,fit: BoxFit.fitWidth,),
                          SizedBox(width: 13),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Credit Card' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , color: '555555'.toColor()),),
                              Text('4535 **** **12' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , color: '555555'.toColor()),),
                            ],
                          ),
                          Spacer(),
                          Container(width: 100,height: 41,
                            decoration: BoxDecoration(
                              color: 'F4F5FA'.toColor(),
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight:  Radius.circular(5),bottomLeft:  Radius.circular(5),)
                            ),
                            child: Center(child: Text('Change' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),)),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:35.0 , bottom: 23),
                  child: Divider(color: 'F4F5FA'.toColor(),thickness: 6,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:20.0 , right: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Delivery Address' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w500),),
                      SizedBox(height: 32,),
                      Row(
                        children: [
                          Image.asset('assets/bottom/Home.png' , width: 37,fit: BoxFit.fitWidth,),
                          SizedBox(width: 13),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('3rd Floor, WZ Block, Vikaspuri' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , color: '555555'.toColor()),),
                              Text('New Delhi...' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , color: '555555'.toColor()),),
                            ],
                          ),
                          Spacer(),
                          Container(width: 100,height: 41,
                            decoration: BoxDecoration(
                                color: 'F4F5FA'.toColor(),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight:  Radius.circular(5),bottomLeft:  Radius.circular(5),)
                            ),
                            child: Center(child: Text('Change' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),)),
                          )
                        ],
                      ),
                      SizedBox(height: 47,),
                      GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: placed(),
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
                          child: Center(child: Text('Checkout' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

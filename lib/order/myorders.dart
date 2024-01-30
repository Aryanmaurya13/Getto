import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/mainscreens/accounts.dart';
import 'package:getto/mainscreens/home.dart';
import 'package:getto/order/orderdetails.dart';
import 'package:getto/order/trackorder.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class myorders extends StatefulWidget {
  const myorders({super.key});

  @override
  State<myorders> createState() => _myordersState();
}

class _myordersState extends State<myorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0 , right: 20 , left: 20),
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
                  Center(child: Text('My Orders' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                  SizedBox(width: 20,)
                ],
              ),
              SizedBox(height: 20,),
              Container(
                height: 443,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: 'E7E7E7'.toColor())
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: orderdetails(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/shirt1.png', height: 75,width: 75,),
                            SizedBox(width: 23,),
                            Column(crossAxisAlignment:CrossAxisAlignment.start ,
                              children: [
                                Text('#625262735274', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                                SizedBox(height: 3,),
                                Text('#625262735274', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: '555555'.toColor()),),
                                SizedBox(height: 3,),
                                Text('10 Items' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13, color: '555555'.toColor()),)
                              ],
                            ),
                            Spacer(),
                            Container(
                              height: 32,width: 88,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),),
                                color: 'FD9419'.toColor(),
                              ),
                              child: Center(child: Text('Ongoing', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),)),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 17,),
                      Divider(color: 'ECECEC'.toColor(),height: 0,),
                      SizedBox(height: 17,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('10 Apr 2024 at 07:45 PM' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13 , color: '999999'.toColor()),),
                          Text('Rs 650', style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(height: 17,),
                      Divider(color: 'ECECEC'.toColor(),height: 0,),
                      SizedBox(height: 15,),
                      Stack(alignment: AlignmentDirectional.center,
                        children: [
                          Image.asset('assets/dmap.png' , height: 181,width: double.maxFinite,fit: BoxFit.fill,),
                          Image.asset('assets/dboy.png', height: 40,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: trackorder(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Container(
                          height: 50,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                              gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                          ),
                          child: Center(child: Text('Track Order' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: 'E7E7E7'.toColor())
                ),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset('assets/shirt2.png', height: 75,width: 75,),
                          SizedBox(width: 23,),
                          Column(crossAxisAlignment:CrossAxisAlignment.start ,
                            children: [
                              Text('#625262735274', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),),
                              SizedBox(height: 3,),
                              Text('#625262735274', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: '555555'.toColor()),),
                              SizedBox(height: 3,),
                              Text('10 Items' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13, color: '555555'.toColor()),)
                            ],
                          ),
                          Spacer(),
                          Container(
                            height: 32,width: 88,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),),
                              color: '66D140'.toColor(),
                            ),
                            child: Center(child: Text('Delivered', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),)),
                          ),
                        ],
                      ),
                      SizedBox(height: 17,),
                      Divider(color: 'ECECEC'.toColor(),height: 0,),
                      SizedBox(height: 17,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('08 Apr 2024 at 12:12 PM' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13 , color: '999999'.toColor()),),
                          Text('Rs 800', style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w600),)
                        ],
                      ),
                      SizedBox(height: 17,),
                      Divider(color: 'ECECEC'.toColor(),height: 0,),
                      SizedBox(height: 15,),
                      Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.star_border , size: 24,color: '999999'.toColor(),),
                          SizedBox(width: 8,),
                          Icon(Icons.star_border , size: 24,color: '999999'.toColor(),),
                          SizedBox(width: 8,),
                          Icon(Icons.star_border , size: 24,color: '999999'.toColor(),),
                          SizedBox(width: 8,),
                          Icon(Icons.star_border , size: 24,color: '999999'.toColor(),),
                          SizedBox(width: 8,),
                          Icon(Icons.star_border , size: 24,color: '999999'.toColor(),),

                          Spacer(),
                          Container(
                            height: 36,width: 101,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),),
                              color: 'F4F5FA'.toColor(),
                            ),
                            child: Center(
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/repeat.png', height: 14,),
                                  SizedBox(width: 10,),
                                  Text('Reorder', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black),),
                                ],
                              ),
                            ),
                          ),
                        ],
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
  }
}

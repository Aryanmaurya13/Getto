import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/order/checkout.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0 , right:20 , top: 55),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Center(child: Text('My Cart' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                SizedBox(height: 33,),
                Row(
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
                Padding(
                  padding: const EdgeInsets.only(top: 25.0 , bottom: 25),
                  child: Divider(color: 'EDEFFA'.toColor(),),
                ),

                Row(
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
                Padding(
                  padding: const EdgeInsets.only(top: 25.0 , bottom: 25),
                  child: Divider(color: 'EDEFFA'.toColor(),),
                ),
                Row(
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
                SizedBox(height: 35,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Before you Checkout' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),
                    Text('-' , style: TextStyle(fontWeight: FontWeight.w600  , fontSize: 45),)
                  ],
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration:BoxDecoration(
                      border: Border.all(color:'F4F5FA'.toColor() ),
                          borderRadius: BorderRadius.circular(15)
                  ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/pinkshirt.png' , height: 160,),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Regular Fit Solid Cotton \nLinen Sustainable Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        decoration:BoxDecoration(
                            border: Border.all(color:'F4F5FA'.toColor() ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/whitegreen.png' , height: 160,),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Men Olive Green & Black \nChecked Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 532 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1299' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        decoration:BoxDecoration(
                            border: Border.all(color:'F4F5FA'.toColor() ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/pinkshirt.png' , height: 160,),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Regular Fit Solid Cotton \nLinen Sustainable Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Frequently Brought Together' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),
                    Text('-' , style: TextStyle(fontWeight: FontWeight.w600  , fontSize: 45),)
                  ],
                ),
                SizedBox(height: 10,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        decoration:BoxDecoration(
                            border: Border.all(color:'F4F5FA'.toColor() ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/redhodd.png' , height: 160,),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Men Maroon Solid \nHooded Sweatshirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 950 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1299' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        decoration:BoxDecoration(
                            border: Border.all(color:'F4F5FA'.toColor() ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/whitegreen.png' , height: 160,),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Men Olive Green & Black \nChecked Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 532 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1299' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        decoration:BoxDecoration(
                            border: Border.all(color:'F4F5FA'.toColor() ),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/pinkshirt.png' , height: 160,),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Regular Fit Solid Cotton \nLinen Sustainable Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                ],
                              ),
                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Total Payment' , style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w400 , color: '777777'.toColor()),),
                            Text('Rs 3409' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.w500),),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: checkout(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );

                        },
                        child: Container(
                          height: 59,
                          width: 77,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight:Radius.circular(5),bottomLeft: Radius.circular(5), ),
                              gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                          ),
                          child: Center(child: Text('Checkout' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w500),)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 35,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

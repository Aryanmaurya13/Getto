import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/details.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../sectionpages/productdetails.dart';

class frontpage extends StatefulWidget {
  const frontpage({super.key});

  @override
  State<frontpage> createState() => _frontpageState();
}

class _frontpageState extends State<frontpage> {
  bool men = true;
  bool women = false;
  bool kids = false;
  bool store1 = false;
  bool store2 = false;
  bool store3 = false;
  bool store4 = false;
  bool store5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0 , left: 20 , right: 20),
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hey! Vishal Singh' , style: TextStyle(fontWeight: FontWeight.w600 ,fontSize: 16),),
                        SizedBox(height: 6,),
                        Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/Locationgrade.png' , height: 17 ,width: 17,),
                            SizedBox(width: 5,),
                            Text('Green Park, New Delhi' , style: TextStyle(fontWeight: FontWeight.w400 ,fontSize: 13),),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 2.0),
                              child: Image.asset('assets/down.png' , width: 9,),
                            )

                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset('assets/Heart.png' , height: 24,),
                        SizedBox(width: 20,),
                        Image.asset('assets/Notification.png' , height: 24,)
                      ],
                    )

                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  width: double.maxFinite,
                  decoration: BoxDecoration(

                    border: Border.all(color: 'EDEFFA'.toColor(),),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),)),
                  child: TextField(

                    decoration: InputDecoration(counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,

                      ),


                      hintText: 'Search Fashion..',
                      hintStyle: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),
                      suffixIcon: Icon(Icons.search_outlined),
                      suffixIconColor: 'A7A9B7'.toColor()
                    ),
                  ),

                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            men = true;
                            women = false;
                            kids = false;
                          });
                        },
                        child: Container(
                          height: 46,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                              gradient: LinearGradient(colors: [(men == true)?'00D0BB'.toColor():'F4F5FA'.toColor() , (men == true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('Men' , style: TextStyle(color: (men == true)?Colors.white:Colors.black , fontSize: 14  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            men = false;
                            women = true;
                            kids = false;
                          });
                        },
                        child: Container(
                          height: 46,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                              gradient: LinearGradient(colors: [(women == true)?'00D0BB'.toColor():'F4F5FA'.toColor() , (women == true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('Women' , style: TextStyle(color: (women == true)?Colors.white:Colors.black , fontSize: 14  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ),
                    SizedBox(width: 8,),
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {
                            men = false;
                            women = false;
                            kids = true;
                          });
                        },
                        child: Container(
                          height: 46,

                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                              gradient: LinearGradient(colors: [(kids == true)?'00D0BB'.toColor():'F4F5FA'.toColor() , (kids == true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('Kids' , style: TextStyle(color: (kids == true)?Colors.white:Colors.black , fontSize: 14  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/Rectangle1.png' ,height: 221,),
                          Padding(
                            padding: const EdgeInsets.only(top: 110.0 , left: 18),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('WINTER SALE GET' , style: TextStyle(color: Colors.white , fontSize: 26 , fontWeight: FontWeight.w600),),
                                    Text(' 30% OFF' , style: TextStyle(color: 'EF9D9D'.toColor() , fontSize: 26 , fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('ON' , style: TextStyle(color: Colors.white , fontSize: 26 , fontWeight: FontWeight.w600),),
                                    Text(' ALL DRESS.' , style: TextStyle(color: 'EF9D9D'.toColor() , fontSize: 26 , fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(width: 15,),
                      Stack(
                        children: [
                          Image.asset('assets/Rectangle1.png' ,height: 221,),
                          Padding(
                            padding: const EdgeInsets.only(top: 110.0 , left: 18),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text('WINTER SALE GET' , style: TextStyle(color: Colors.white , fontSize: 26 , fontWeight: FontWeight.w600),),
                                    Text(' 30% OFF' , style: TextStyle(color: 'EF9D9D'.toColor() , fontSize: 26 , fontWeight: FontWeight.w600),),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text('ON' , style: TextStyle(color: Colors.white , fontSize: 26 , fontWeight: FontWeight.w600),),
                                    Text(' ALL DRESS.' , style: TextStyle(color: 'EF9D9D'.toColor() , fontSize: 26 , fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Shop By Brand' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),
                    Image.asset('assets/aright.png' , width: 24,)
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                          border: Border.all(color: 'F4F5FA'.toColor())
                        ),
                        child: Center(child: Image.asset('assets/allen.png' , width: 87,)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                            border: Border.all(color: 'F4F5FA'.toColor())
                        ),
                        child: Center(child: Image.asset('assets/peter.png' , width: 87,)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                            border: Border.all(color: 'F4F5FA'.toColor())
                        ),
                        child: Center(child: Image.asset('assets/puma.png' , width: 87,)),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        height: 110,
                        width: 110,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),),
                            border: Border.all(color: 'F4F5FA'.toColor())
                        ),
                        child: Center(child: Image.asset('assets/allen.png' , width: 87,)),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Top Stores Near you' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),

                  ],
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.maxFinite,
                  height: (store1 == false)?147:455,
                  decoration: BoxDecoration(
                    border: Border.all(color: 'F4F5FA'.toColor()),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/cobb.png' , height: 108, width: 100,fit: BoxFit.fill,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('COB Factory Outlet' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16),),
                                        Row(
                                          children: [
                                            Image.asset('assets/star.png' , height: 18,),
                                            SizedBox(width: 5,),
                                            Text('4.2', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Formal shirts, Casual shirts, \nJeans, Touser..' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),
                                    SizedBox(height: 5,),
                                Row(mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/Locationi.png' , height: 20,),
                                    Text(' 1.2 Km' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                  ],
                                ),
                                    SizedBox(height: 4,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/spark.png' , height: 13,),
                                            Text('   Delivery in 3-4 days.' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                          ],
                                        ),
                                        GestureDetector(onTap:(){
                                          setState(() {
                                            store1 = ! store1;
                                          });
                                        },
                                            child: Image.asset((store1 == false)?'assets/dropu.png':'assets/dropd.png' , height: 24,))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        (store1 == true)?Padding(
                          padding: const EdgeInsets.only(top: 20.0 ,bottom: 20 , right: 15 , left: 15),
                          child: Divider(color: 'F4F5FA'.toColor(),thickness: 1,),

                        ):SizedBox(),
                        (store1 == true)? SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              GestureDetector(
                                onTap:(){
                                  PersistentNavBarNavigator.pushNewScreen(
                                    context,
                                    screen: prodetails(),
                                    withNavBar: false, // OPTIONAL VALUE. True by default.
                                    pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                  );
                          },
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset('assets/shirt1.png' , height: 170,),
                                    SizedBox(height: 10,),
                                    Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                    SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                        Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                      ],
                                    )

                                  ],
                                ),
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt2.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Olive Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 714 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1399' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                            ],
                          ),
                        ):SizedBox()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.maxFinite,
                  height: (store2 == false)?147:455,
                  decoration: BoxDecoration(
                      border: Border.all(color: 'F4F5FA'.toColor()),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/cantshop.png' , height: 108, width: 100,fit: BoxFit.fill,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Cantabil Retail India' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16),),
                                        Row(
                                          children: [
                                            Image.asset('assets/star.png' , height: 18,),
                                            SizedBox(width: 5,),
                                            Text('4.2', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Formal shirts, Casual shirts, \nJeans, Touser..' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),
                                    SizedBox(height: 5,),
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/Locationi.png' , height: 20,),
                                        Text(' 1.2 Km' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/spark.png' , height: 13,),
                                            Text('   Delivery in 3-4 days.' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                          ],
                                        ),
                                        GestureDetector(onTap:(){
                                          setState(() {
                                            store2 = ! store2;
                                          });
                                        },
                                            child: Image.asset((store2 == false)?'assets/dropu.png':'assets/dropd.png' , height: 24,))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        (store2 == true)?Padding(
                          padding: const EdgeInsets.only(top: 20.0 ,bottom: 20 , right: 15 , left: 15),
                          child: Divider(color: 'F4F5FA'.toColor(),thickness: 1,),

                        ):SizedBox(),
                        (store2 == true)? SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt2.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Olive Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 714 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1399' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                            ],
                          ),
                        ):SizedBox()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.maxFinite,
                  height: (store3 == false)?147:455,
                  decoration: BoxDecoration(
                      border: Border.all(color: 'F4F5FA'.toColor()),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/dukeshop.png' , height: 108, width: 100,fit: BoxFit.fill,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Duke Enterprises' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16),),
                                        Row(
                                          children: [
                                            Image.asset('assets/star.png' , height: 18,),
                                            SizedBox(width: 5,),
                                            Text('4.4', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Formal shirts, Casual shirts, \nJeans, Touser..' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),
                                    SizedBox(height: 5,),
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/Locationi.png' , height: 20,),
                                        Text(' 1.5 Km' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/spark.png' , height: 13,),
                                            Text('   Delivery in 3-4 days.' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                          ],
                                        ),
                                        GestureDetector(onTap:(){
                                          setState(() {
                                            store3 = ! store3;
                                          });
                                        },
                                            child: Image.asset((store3 == false)?'assets/dropu.png':'assets/dropd.png' , height: 24,))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        (store3 == true)?Padding(
                          padding: const EdgeInsets.only(top: 20.0 ,bottom: 20 , right: 15 , left: 15),
                          child: Divider(color: 'F4F5FA'.toColor(),thickness: 1,),

                        ):SizedBox(),
                        (store3 == true)? SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt2.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Olive Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 714 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1399' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                            ],
                          ),
                        ):SizedBox()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.maxFinite,
                  height: (store4 == false)?147:455,
                  decoration: BoxDecoration(
                      border: Border.all(color: 'F4F5FA'.toColor()),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/allenshop.png' , height: 108, width: 100,fit: BoxFit.fill,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Allen Solly' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16),),
                                        Row(
                                          children: [
                                            Image.asset('assets/star.png' , height: 18,),
                                            SizedBox(width: 5,),
                                            Text('4.1', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Formal shirts, Casual shirts, \nJeans, Touser..' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),
                                    SizedBox(height: 5,),
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/Locationi.png' , height: 20,),
                                        Text(' 1.5 Km' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/spark.png' , height: 13,),
                                            Text('   Delivery in 3-4 days.' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                          ],
                                        ),
                                        GestureDetector(onTap:(){
                                          setState(() {
                                            store4 = ! store4;
                                          });
                                        },
                                            child: Image.asset((store4 == false)?'assets/dropu.png':'assets/dropd.png' , height: 24,))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        (store4 == true)?Padding(
                          padding: const EdgeInsets.only(top: 20.0 ,bottom: 20 , right: 15 , left: 15),
                          child: Divider(color: 'F4F5FA'.toColor(),thickness: 1,),

                        ):SizedBox(),
                        (store4 == true)? SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt2.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Olive Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 714 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1399' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                            ],
                          ),
                        ):SizedBox()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.maxFinite,
                  height: (store5 == false)?147:455,
                  decoration: BoxDecoration(
                      border: Border.all(color: 'F4F5FA'.toColor()),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15),bottomLeft: Radius.circular(15),)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/pumashop.png' , height: 108, width: 100,fit: BoxFit.fill,),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,

                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Puma' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16),),
                                        Row(
                                          children: [
                                            Image.asset('assets/star.png' , height: 18,),
                                            SizedBox(width: 5,),
                                            Text('4.5', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16))
                                          ],
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 5,),
                                    Text('Formal shirts, Casual shirts, \nJeans, Touser..' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),
                                    SizedBox(height: 5,),
                                    Row(mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Image.asset('assets/Locationi.png' , height: 20,),
                                        Text(' 2.5 Km' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                      ],
                                    ),
                                    SizedBox(height: 4,),
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Image.asset('assets/spark.png' , height: 13,),
                                            Text('   Delivery in 3-4 days.' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '777777'.toColor()),),

                                          ],
                                        ),
                                        GestureDetector(onTap:(){
                                          setState(() {
                                            store5 = ! store5;
                                          });
                                        },
                                            child: Image.asset((store5 == false)?'assets/dropu.png':'assets/dropd.png' , height: 24,))
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        ),
                        (store5 == true)?Padding(
                          padding: const EdgeInsets.only(top: 20.0 ,bottom: 20 , right: 15 , left: 15),
                          child: Divider(color: 'F4F5FA'.toColor(),thickness: 1,),

                        ):SizedBox(),
                        (store5 == true)? SingleChildScrollView(scrollDirection: Axis.horizontal,
                          child: Row(mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt2.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Olive Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 714 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1399' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                              SizedBox(width: 15,),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset('assets/shirt1.png' , height: 170,),
                                  SizedBox(height: 10,),
                                  Text('Men Blue Slim Fit Solid \nCasual Shirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  SizedBox(height: 10,),
                                  Row(
                                    children: [
                                      Text('Rs 769 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                      Text('  Rs 1799' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                    ],
                                  )

                                ],
                              ),
                            ],
                          ),
                        ):SizedBox()
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Best Sellers' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 18),),
                    Image.asset('assets/aright.png' , width: 24,)
                  ],
                ),
                SizedBox(height: 20,),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap:(){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: prodetails(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                  },
                        child: Container(height :277,
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('assets/sho.png' , height: 180,width:150 ,fit: BoxFit.fill,),
                              SizedBox(height: 10,),
                              Text('Puma Store' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: '999999'.toColor()),),
                              Text('Men Black Sneakers' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 ),),
                              Spacer(),
                              Row(
                                children: [
                                  Text('Rs 1574 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                  Text('  Rs 4499' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                ],
                              ),


                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(height: 277,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/tee.png' , height: 180,width:150 ,fit: BoxFit.fill,),
                            SizedBox(height: 10,),
                            Text('Roadster' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: '999999'.toColor()),),
                            Text('Men Cotton Casual \nShirt' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 ),),
                            SizedBox(height: 10,),
                            Row(
                              children: [
                                Text('Rs 1574 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                Text('  Rs 4499' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                              ],
                            )

                          ],
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(height :277,
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('assets/sho.png' , height: 180,width:150 ,fit: BoxFit.fill,),
                            SizedBox(height: 10,),
                            Text('Puma Store' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12 , color: '999999'.toColor()),),
                            Text('Men Black Sneakers' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 ),),
                            Spacer(),
                            Row(
                              children: [
                                Text('Rs 1574 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13),),
                                Text('  Rs 4499' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                              ],
                            ),


                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

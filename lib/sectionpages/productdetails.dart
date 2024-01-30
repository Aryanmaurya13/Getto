import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/mainscreens/cart.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class prodetails extends StatefulWidget {
  const prodetails({super.key});

  @override
  State<prodetails> createState() => _prodetailsState();
}

class _prodetailsState extends State<prodetails> {
  bool blue = true;
  bool black = false;
  bool s= false;
  bool m = false;
  bool l = true;
  bool xl = false;
  bool addtocart = false;
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 0.0 ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Column(
                      children: [
                        Image.asset('assets/detailpic.png'),
                        Container(
                          height: 136,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0 , right: 20 , bottom: 30),
                      child: Container(height: 154,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10),),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(0, 126, 169, 0.1),
                              spreadRadius: 0,
                              blurRadius: 4,
                              offset: Offset(0, 4), // changes position of shadow
                            ),
                          ],
                        ),

                        child: Padding(
                          padding: const EdgeInsets.only(left: 12.0 , right: 12),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 15,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Puma Store', style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '999999'.toColor()),),

                                  Row(
                                    children: [
                                      Image.asset('assets/star.png' , height: 15),
                                      SizedBox(width: 5,),
                                      Text('4.2', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13))
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 6,),
                              Text('Men Shirt Blue Denim', style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 16)),
                              SizedBox(height: 17,),
                              Row(
                                children: [
                                  Text('Rs 1574' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15),),
                                  SizedBox(width: 12,),
                                  Text('4499' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                                  SizedBox(width: 12,),
                                  Text('60% Off' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15 , color: '00D0BB'.toColor()),),
                                ],
                              ),
                              SizedBox(height: 8),
                              Text('Price inclusive of all taxes.' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 11, color: '999999'.toColor()),),
                              SizedBox(height: 10,),
                              Row(mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Image.asset('assets/spark.png' , color: '00D0BB'.toColor(), height: 12,),
                                  SizedBox(width: 10,),
                                  Text('Expected delivery in 3-4 days.', style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12, color: '454545'.toColor())),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),


                Divider(color: 'F4F5FA'.toColor(), thickness: 6,height: 0,),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0 , left: 20 , top: 20),
                  child: Text('Color', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0 , left: 20 , top: 25),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            blue = true;
                            black= false;
                          });
                },
                        child: Container(
                          height: 44,width: 44,
                          decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(22),
                            border: Border.all(color: (blue == true)?'454545'.toColor():Colors.transparent),
                          ),
                          child: Center(
                            child: Container(height: 32,width: 32,
                              decoration: BoxDecoration(
                                color: '4270AC'.toColor(),
                                borderRadius: BorderRadius.circular(16.5),
                              ),

                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 15),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            black = true;
                            blue = false;
                          });
                        },
                        child: Container(
                          height: 44,width: 44,
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(22),
                              border: Border.all(color: (black == true)?'454545'.toColor():Colors.transparent)
                          ),
                          child: Center(
                            child: Container(height: 32,width: 32,
                              decoration: BoxDecoration(
                                color: '454545'.toColor(),
                                borderRadius: BorderRadius.circular(16.5),
                              ),

                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0 , bottom: 20),
                  child: Divider(color: 'F4F5FA'.toColor(), thickness: 6,),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20.0 , left: 20 ),
                  child: Column(crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Select Size', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16)),
                          Row(
                            children: [
                             Image.asset('assets/scale.png' , height: 16,),
                              SizedBox(width: 5,),
                              Text('Size Chart', style: TextStyle(fontWeight: FontWeight.w500 ,  fontSize: 12,decoration: TextDecoration.underline)),

                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 16,),
                      Text('Based on your past purchases, we recommend a size for you.', style: TextStyle(fontWeight: FontWeight.w400  , color: '999999'.toColor())),
                      SizedBox(height: 16,),
                      Container(width: 170,height: 32,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6),),
                          color: 'F4F5FA'.toColor()
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Container(height: 11,width: 20,
                              color: Colors.black,
                            ),
                            SizedBox(width: 10,),
                            Text('Size Recommended: L' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            s=true;
                            m=false;
                            l=false;
                            xl= false;
                          });
                },
                        child: Container(
                          height: 44,width: 44,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),),
                            gradient: LinearGradient(colors: [(s==true)?'00D0BB'.toColor():'F4F5FA'.toColor(),(s==true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('S' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w500 , color: (s== true)?Colors.white:Colors.black),)),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            s=false;
                            m=true;
                            l=false;
                            xl= false;
                          });
                        },
                        child: Container(
                          height: 44,width: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),),
                              gradient: LinearGradient(colors: [(m==true)?'00D0BB'.toColor():'F4F5FA'.toColor(),(m==true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('M' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w500 , color: (m== true)?Colors.white:Colors.black),)),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            s=false;
                            m=false;
                            l=true;
                            xl= false;
                          });
                        },
                        child: Container(
                          height: 44,width: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),),
                              gradient: LinearGradient(colors: [(l==true)?'00D0BB'.toColor():'F4F5FA'.toColor(),(l==true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('L' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w500 , color: (l== true)?Colors.white:Colors.black),)),
                        ),
                      ),
                      SizedBox(width: 10,),
                      GestureDetector(
                        onTap:(){
                          setState(() {
                            s=false;
                            m=false;
                            l=false;
                            xl= true;
                          });
                        },
                        child: Container(
                          height: 44,width: 44,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),),
                              gradient: LinearGradient(colors: [(xl==true)?'00D0BB'.toColor():'F4F5FA'.toColor(),(xl==true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                          ),
                          child: Center(child: Text('XL' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w500 , color: (xl== true)?Colors.white:Colors.black),)),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0 , bottom: 20),
                  child: Divider(color: 'F4F5FA'.toColor(), thickness: 6,),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Product Details' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 16),),
                      SizedBox(height: 25,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Product Info' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),),
                          Image.asset('assets/plus.png' , height: 14,)
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text('A visually pleasing lilac colour way and flower-shaped buckle take these crossover mules to greater style heights. Between the rounded square-toes and chunky platform soles.'
                        , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '555555'.toColor()),),
                      SizedBox(height: 20,),
                      Text('Material & Care' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),),
                      SizedBox(height: 15,),
                      Text('Dupion Silk' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12),),
                      SizedBox(height: 5,),
                      Text('Machine-wash' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '555555'.toColor()),),
                      SizedBox(height: 30,),
                      Text('Specifications' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Column(
                            children: [
                              Text('Type' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12),),
                              SizedBox(height: 5,),
                              Text('Top' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '555555'.toColor()),),
                            ],
                          ),
                          SizedBox(width: 90,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Pattern' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12),),
                              SizedBox(height: 5,),
                              Text('Adjustable Strap' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '555555'.toColor()),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Material' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12),),
                              SizedBox(height: 5,),
                              Text('Elastane' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '555555'.toColor()),),
                            ],
                          ),
                          SizedBox(width: 69,),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Color' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 12),),
                              SizedBox(height: 5,),
                              Text('Breathable Lining' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '555555'.toColor()),),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Divider(
                        color: 'CCCCCC'.toColor(),
                      ),
                      SizedBox(height: 25,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Return & Exchange Policy' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 16),),
                          Icon(Icons.add , size: 20,color: '777777'.toColor(),)
                        ],
                      ),
                      SizedBox(height: 25,),
                      Divider(
                        color: 'CCCCCC'.toColor(),
                      ),
                      SizedBox(height: 25,),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Review' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 16),),
                          Icon(Icons.add , size: 20,color: '777777'.toColor(),)
                        ],
                      ),
                      SizedBox(height: 35,),
                      Row(
                        children: [
                          (addtocart == false)?Expanded(
                            child: Container(
                              height: 64,
                              
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight:Radius.circular(5),bottomLeft: Radius.circular(5), ),
                                  gradient: LinearGradient(colors: ['F4F5FA'.toColor() , 'F4F5FA'.toColor()])
                              ),
                              child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/Heart.png' , height: 21,),
                                  SizedBox(width: 4,),
                                  Text('Wishlist' , style: TextStyle(color: Colors.black , fontSize: 18  ,fontWeight: FontWeight.w500),),
                                ],
                              )),
                            ),
                          ):SizedBox(),
                          (addtocart == false)?SizedBox(width: 12,):SizedBox(),
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                (addtocart == true && count == 1)?PersistentNavBarNavigator.pushNewScreen(
                                  context,
                                  screen: cart(),
                                  withNavBar: false, // OPTIONAL VALUE. True by default.
                                  pageTransitionAnimation: PageTransitionAnimation.cupertino,
                                ):null;
                                setState(() {
                                  addtocart = true;
                                  count = 1;
                                });

                              },
                              child: Container(
                                height: 64,

                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight:Radius.circular(5),bottomLeft: Radius.circular(5), ),
                                    gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                                ),
                                child: Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/bottom/Buy.png' , height: 16, color: Colors.white,),
                                    SizedBox(width: 5),
                                    Text((addtocart == false)?'Add to Cart': 'Go to Cart', style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w500),),
                                  ],
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 35,),
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
                    ],
                  ),
                ),
                SizedBox(height: 30,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}

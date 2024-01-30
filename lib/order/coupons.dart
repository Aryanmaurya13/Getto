import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';

class coupons extends StatefulWidget {
  const coupons({super.key});

  @override
  State<coupons> createState() => _couponsState();
}

class _couponsState extends State<coupons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 57.0 , right: 20 , left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){
                      Navigator.pop(context);
                    },
                        child: Icon(Icons.arrow_back_outlined , size: 20,)),
                    Text('Coupons' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 20),),
                    Icon(Icons.search_outlined , size: 20,color: '999999'.toColor(),)
                  ],
                ),
                SizedBox(height: 20,),
                Container(height: 64,width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: 'F5F5F5'.toColor(), width: 1.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0 , right: 10),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Enter Coupon Code' ,style: TextStyle(fontSize: 14 , fontWeight: FontWeight.w500),),
                        Container(height: 44,width: 87,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()]),
                            borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6),)
                          ),
                          child: Center(child: Text('Apply' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: Colors.white),)),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 12,),
                Container(height: 170,width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: 'F5F5F5'.toColor(), width: 1.5)
                  ),
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20.0 , top: 15 , right: 20 , bottom: 14),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Flat 10% Off Upto Rs 100 on HDFC Cashback Credit Card' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                        SizedBox(height: 14,),
                        Text('Total value of items must be Rs 199' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '555555'.toColor()),),
                        SizedBox(height: 14,),
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DottedBorder(
                                borderType: BorderType.RRect,
                                radius: Radius.circular(6),
                              color: Colors.black,
                              strokeWidth: 1,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 9.0 , bottom: 9 , right: 15 , left: 15),
                                child: Text(' HSFC10 ' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),
                              )
                            ),
                            Container(height: 32,width: 76,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()]),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6),)
                              ),
                              child: Center(child: Text('Apply' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12 , color: Colors.white),)),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ),
                SizedBox(height: 12,),
                Container(height: 170,width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: 'F5F5F5'.toColor(), width: 1.5)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 20.0 , top: 15 , right: 20 , bottom: 14),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flat 10% off on standard chartered Digismart Credit Card' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                          SizedBox(height: 14,),
                          Text('No minimum order value' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '555555'.toColor()),),
                          SizedBox(height: 14,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(6),
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 9.0 , bottom: 9 , right: 15 , left: 15),
                                    child: Text('DIGISMART' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),
                                  )
                              ),
                              Container(height: 32,width: 76,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()]),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6),)
                                ),
                                child: Center(child: Text('Apply' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12 , color: Colors.white),)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
                SizedBox(height: 12,),
                Container(height: 170,width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: 'F5F5F5'.toColor(), width: 1.5)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 20.0 , top: 15 , right: 20 , bottom: 14),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Flat 10% off on standard chartered Digismart Credit Card' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                          SizedBox(height: 14,),
                          Text('No minimum order value' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '555555'.toColor()),),
                          SizedBox(height: 14,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(6),
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 9.0 , bottom: 9 , right: 15 , left: 15),
                                    child: Text('DIGISMART' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),
                                  )
                              ),
                              Container(height: 32,width: 76,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()]),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6),)
                                ),
                                child: Center(child: Text('Apply' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12 , color: Colors.white),)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
                SizedBox(height: 12,),
                Container(height: 170,width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: 'F5F5F5'.toColor(), width: 1.5)
                    ),
                    child:Padding(
                      padding: const EdgeInsets.only(left: 20.0 , top: 15 , right: 20 , bottom: 14),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Get Upto 50 OFf on Your First Purchase' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
                          SizedBox(height: 33,),
                          Text('Total value of items must be Rs 159 or more' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '555555'.toColor()),),
                          SizedBox(height: 14,),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DottedBorder(
                                  borderType: BorderType.RRect,
                                  radius: Radius.circular(6),
                                  color: Colors.black,
                                  strokeWidth: 1,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 9.0 , bottom: 9 , right: 15 , left: 15),
                                    child: Text('PAYMENT50' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500),),
                                  )
                              ),
                              Container(height: 32,width: 76,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()]),
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(6),bottomLeft: Radius.circular(6),bottomRight: Radius.circular(6),)
                                ),
                                child: Center(child: Text('Apply' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 12 , color: Colors.white),)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

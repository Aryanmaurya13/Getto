import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/accountsidescreen/addresses.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../login/address.dart';

class addaddress extends StatefulWidget {
  const addaddress({super.key});

  @override
  State<addaddress> createState() => _addaddressState();
}

class _addaddressState extends State<addaddress> {
  bool home = true;
  bool work = false;
  bool hotel = false;
  bool other = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only( top: 55),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: addresses(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );

                        },
                        child: Icon(Icons.arrow_back_ios_new , size: 20,)),
                    Center(child: Text('Enter Address Details' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                    SizedBox(width: 20,)
                  ],
                ),
                Container(
                  height: 89,
                  width: MediaQuery.of(context).size.width,
                  color: 'F1FCFF'.toColor(),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20 , right: 20),
                    child: Row(
                      children: [
                        Image.asset('assets/locdrop.png' ,height: 30,),
                        SizedBox(width: 8,),
                        Flexible(
                          child: Text('District Centre, Janakpuri West, New Delhi -  110023',softWrap: true ,style: TextStyle(
                            fontSize: 14 , fontWeight:FontWeight.w500
                          ),),
                        ),
                        SizedBox(width: 8,),
                        Container(
                          height: 32,
                          width: 109,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),),
                            gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                          ),
                          child: Center(child: Text('Change' , style: TextStyle(fontSize: 13 , fontWeight: FontWeight.w600 , color: Colors.white),)),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 25,),
                      Text('House / Flat / Block No. *' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                      SizedBox(height: 25,),
                      TextField(
                        style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3, //<-- SEE HERE
                              color: 'E2E2E2'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('Floor (Optional)' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                      SizedBox(height: 25,),
                      TextField(
                        style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3, //<-- SEE HERE
                              color: 'E2E2E2'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('Apartment / Road  / Locality *' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                      SizedBox(height: 25,),
                      TextField(
                        style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3, //<-- SEE HERE
                              color: 'E2E2E2'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('Land Mark and Area Name (Optional)' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14 , color: '555555'.toColor()),),
                      SizedBox(height: 25,),
                      TextField(
                        style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w500),
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              width: 3, //<-- SEE HERE
                              color: 'E2E2E2'.toColor(),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30,),
                      Text('Save Address As' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 15),),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = true;
                                work = false;
                                hotel = false;
                                other= false;
                              });
                },
                            child: Container(
                              width: 80,height: 34,

                              decoration: BoxDecoration(
                                color: (home == true)? Colors.white:'F4F5FA'.toColor(),
                                border: Border.all(color: (home == true)?'00CFBA'.toColor():Colors.transparent),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),)
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.home_filled ,size: 20, color: (home == true)?'00D0BB'.toColor():Colors.black),
                                  SizedBox(width: 8,),
                                  Text('Home' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500, color: (home == true)?'00D0BB'.toColor():Colors.black))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = false;
                                work = true;
                                hotel = false;
                                other= false;
                              });
                            },
                            child: Container(
                              width: 80,height: 34,

                              decoration: BoxDecoration(
                                  color: (work == true)? Colors.white:'F4F5FA'.toColor(),
                                  border: Border.all(color: (work == true)?'00CFBA'.toColor():Colors.transparent),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),)
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/Work.png', height:20, color: (work == true)?'00D0BB'.toColor():Colors.black),
                                  SizedBox(width: 8,),
                                  Text('Work' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500, color: (work == true)?'00D0BB'.toColor():Colors.black))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = false;
                                work = false;
                                hotel = true;
                                other= false;
                              });
                            },
                            child: Container(
                              width: 80,height: 34,

                              decoration: BoxDecoration(
                                  color: (hotel == true)? Colors.white:'F4F5FA'.toColor(),
                                  border: Border.all(color: (hotel == true)?'00CFBA'.toColor():Colors.transparent),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),)
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/hotel.png', height: 20, color: (hotel == true)?'00D0BB'.toColor():Colors.black),
                                  SizedBox(width: 8,),
                                  Text('Hotel' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500, color: (home == true)?'00D0BB'.toColor():Colors.black))
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = false;
                                work = false;
                                hotel = false;
                                other= true;
                              });
                            },
                            child: Container(
                              width: 80,height: 34,

                              decoration: BoxDecoration(
                                  color: (other == true)? Colors.white:'F4F5FA'.toColor(),
                                  border: Border.all(color: (other == true)?'00CFBA'.toColor():Colors.transparent),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(5),bottomRight: Radius.circular(5),bottomLeft: Radius.circular(5),)
                              ),
                              child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset('assets/locdrop.png', height: 20, color: (other == true)?'00D0BB'.toColor():Colors.black),
                                  SizedBox(width: 8,),
                                  Text('Other' , style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500, color: (other == true)?'00D0BB'.toColor():Colors.black))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 80,),
                      GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: addresses(),
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
                          child: Center(child: Text('Save Address' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

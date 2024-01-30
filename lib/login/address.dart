import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:getto/mainscreens/home.dart';

import '../onboard/location.dart';

class address extends StatefulWidget {
  const address({super.key});

  @override
  State<address> createState() => _addressState();
}

class _addressState extends State<address> {
  bool home = true;
  bool work = false;
  bool other = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(top:56.0 ),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(height: 50,width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: 'F4F5FA'.toColor()),
                            borderRadius: BorderRadius.circular(15)
                          ),
                          child: Icon(Icons.arrow_back_outlined)),
                      Text('Add Address' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                      SizedBox(width: 50,)
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 76,
                  decoration: BoxDecoration(
                    color: 'F1FCFF'.toColor()
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 25.0 , right: 25),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('assets/locdrop.png' , height: 30,),
                            SizedBox(width: 13,),
                            Text('Dwarka Sector 12, Delhi -  110078' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),),
                          ],
                        ),
                        Container(
                          height: 34,
                          width: 77,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(5), bottomRight:Radius.circular(5),bottomLeft: Radius.circular(5), ),
                              gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                          ),
                          child: Center(child: Text('Change' , style: TextStyle(color: Colors.white , fontSize: 13  ,fontWeight: FontWeight.w600),)),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0 , right: 20 , top: 30),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('House / Flat / Block No. *' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),),
                      SizedBox(height: 14),
                      Container(height: 60,width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border.all(color: 'F4F5FA'.toColor()),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: TextField(

                            decoration: InputDecoration(counterText: '',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide.none,

                              ),


                              hintText: '',
                            ),
                          ),),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Text('Floor' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),),
                          Text(' (Optional)' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '999999'.toColor()),),
                        ],
                      ),SizedBox(height: 14),

                      Container(height: 60,width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border.all(color: 'F4F5FA'.toColor()),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextField(

                          decoration: InputDecoration(counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,

                            ),


                            hintText: '',
                          ),
                        ),),
                      SizedBox(height: 30,),
                      Text('Apartment / Road  / Locality *' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),),
                      SizedBox(height: 14),
                      Container(height: 60,width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border.all(color: 'F4F5FA'.toColor()),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextField(

                          decoration: InputDecoration(counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,

                            ),


                            hintText: '',
                          ),
                        ),),
                      SizedBox(height: 30,),
                      Row(
                        children: [
                          Text('Land Mark' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14),),
                          Text(' (Optional)' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 , color: '999999'.toColor()),),
                        ],
                      ),
                      SizedBox(height: 14),
                      Container(height: 60,width: double.maxFinite,
                        decoration: BoxDecoration(
                            border: Border.all(color: 'F4F5FA'.toColor()),
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: TextField(

                          decoration: InputDecoration(counterText: '',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,

                            ),


                            hintText: '',
                          ),
                        ),),
                      SizedBox(height: 14),
                      Row(
                        children: [
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = true;
                                work = false;
                                other = false;
                              });
                },
                            child: Container(
                              height: 36,width: 80,
                              decoration: BoxDecoration(
                                color: (home == true)?Colors.transparent:'F4F5FA'.toColor(),
                                border: Border.all(color: (home == true)?'00CFBA'.toColor():'F4F5FA'.toColor()),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
                              ),
                              child: Center(
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.home_filled , size: 17,color: (home == true)?'00CFBA'.toColor():Colors.black),
                                    SizedBox(width: 6,),
                                    Text('Home' ,style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500,color: (home == true)?'00CFBA'.toColor():Colors.black),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 14,),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = false;
                                work = true;
                                other = false;
                              });
                            },
                            child: Container(
                              height: 36,width: 80,
                              decoration: BoxDecoration(
                                  color: (work == true)?Colors.transparent:'F4F5FA'.toColor(),
                                  border: Border.all(color: (work == true)?'00CFBA'.toColor():'F4F5FA'.toColor()),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
                              ),
                              child: Center(
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.work , size: 17,color: (work == true)?'00CFBA'.toColor():Colors.black),
                                    SizedBox(width: 6,),
                                    Text('Work' ,style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500,color: (work == true)?'00CFBA'.toColor():Colors.black),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 14,),
                          GestureDetector(
                            onTap:(){
                              setState(() {
                                home = false;
                                work = false;
                                other = true;
                              });
                            },
                            child: Container(
                              height: 36,width: 80,
                              decoration: BoxDecoration(
                                  color: (other == true)?Colors.transparent:'F4F5FA'.toColor(),
                                  border: Border.all(color: (other == true)?'00CFBA'.toColor():'F4F5FA'.toColor()),
                                  borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10),)
                              ),
                              child: Center(
                                child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.location_on , size: 17,color: (other == true)?'00CFBA'.toColor():Colors.black),
                                    SizedBox(width: 6,),
                                    Text('Other' ,style: TextStyle(fontSize: 12 , fontWeight: FontWeight.w500,color: (other == true)?'00CFBA'.toColor():Colors.black),)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      GestureDetector(
                        onTap: (){
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) => homes(),
                            ),
                          );
                        },
                        child: Container(
                          height: 64,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight:Radius.circular(15),bottomLeft: Radius.circular(15), ),
                              gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                          ),
                          child: Center(child: Text('Save Address' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                        ),
                      ),
                      SizedBox(height: 30),

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

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/details.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class verify extends StatefulWidget {
  const verify({super.key});

  @override
  State<verify> createState() => _verifyState();
}

class _verifyState extends State<verify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(resizeToAvoidBottomInset: true,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0 , right: 30 , top: 55),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.arrow_back_outlined),
              SizedBox(height: 64,),
              Text('Verification Code' , style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20),),
              SizedBox(height: 15),
              Text('Verification code was sent to' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14, color: '555555'.toColor()),),
              SizedBox(height: 50,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    height: 72,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                  color: 'F4F5FA'.toColor(),
              ),
                    width: 72,
                    child: TextField(keyboardType: TextInputType.number,maxLength: 1,

                      decoration: InputDecoration(counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,

                        ),


                        hintText: '',
                      ),
                    ),
                  ),
                  Container(
                    height: 72,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: 'F4F5FA'.toColor(),
                    ),
                    width: 72,
                    child: TextField(keyboardType: TextInputType.number,maxLength: 1,

                      decoration: InputDecoration(counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,

                        ),


                        hintText: '',
                      ),
                    ),
                  ),
                  Container(
                    height: 72,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: 'F4F5FA'.toColor(),
                    ),
                    width: 72,
                    child: TextField(keyboardType: TextInputType.number,maxLength: 1,

                      decoration: InputDecoration(counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,

                        ),


                        hintText: '',
                      ),
                    ),
                  ),
                  Container(
                    height: 72,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: 'F4F5FA'.toColor(),
                    ),
                    width: 72,
                    child: TextField(keyboardType: TextInputType.number,maxLength: 1,

                      decoration: InputDecoration(counterText: '',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,

                        ),


                        hintText: '',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
              Center(child: Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Resend code in ' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 14, color: '555555'.toColor()),),
                  Text(' 0:16 ' , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14, color: 'A7A9B7'.toColor()),),
                ],
              )),
              SizedBox(height: 30,),

              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 20 , bottom: 30),
                child: GestureDetector(
                  onTap: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: details(),
                      withNavBar: false, // OPTIONAL VALUE. True by default.
                      pageTransitionAnimation: PageTransitionAnimation.cupertino,
                    );
                  },
                  child: Container(
                    height: 64,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(15), bottomRight:Radius.circular(15),bottomLeft: Radius.circular(15), ),
                        gradient: LinearGradient(colors: ['00D0BB'.toColor() , '007EA9'.toColor()])
                    ),
                    child: Center(child: Text('Verify' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

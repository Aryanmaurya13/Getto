import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/verify.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
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
              Text('Login with Phone Number' , style: TextStyle(fontWeight: FontWeight.w700 , fontSize: 20),),
              SizedBox(height: 15),
              Text('Please confirm your registered phone number ' , style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 14, color: '555555'.toColor()),),
              SizedBox(height: 50,),
              Container(
                width: double.maxFinite,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: 'F4F5FA'.toColor(), width: 2),

                ),
                child: Row(
                  children: [
                    Text('    +91  ' , style: TextStyle(fontSize: 16 ,fontWeight: FontWeight.w500),),
                    Padding(
                      padding: const EdgeInsets.only(top: 18.0 , bottom: 18),
                      child: VerticalDivider(
                        color: 'F4F5FA'.toColor(),
                        thickness: 2,
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 180,
                      child: TextField(keyboardType: TextInputType.number,maxLength: 10,

                        decoration: InputDecoration(counterText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide.none,

                          ),


                          hintText: 'Phone Number',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50,),
              Center(child: Text('Or Continue with Social Account ' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 14, color: '555555'.toColor()),)),
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: 'F4F5FA'.toColor()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/Apple.png'),
                      )),
                  SizedBox(width: 27),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: 'F4F5FA'.toColor()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/Google.png'),
                      )),
                  SizedBox(width: 27),
                  Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: 'F4F5FA'.toColor()
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset('assets/face.png'),
                      )),
                ],
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(top: 20 , bottom: 30),
                child: GestureDetector(
                  onTap: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: verify(),
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
                    child: Center(child: Text('Continue' , style: TextStyle(color: Colors.white , fontSize: 18  ,fontWeight: FontWeight.w600),)),
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

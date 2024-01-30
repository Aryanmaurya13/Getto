import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/login/permission.dart';
import 'package:getto/main.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class details extends StatefulWidget {
  const details({super.key});

  @override
  State<details> createState() => _detailsState();
}

class _detailsState extends State<details> {
  String currentItem = "Male";
  List<String> items = ["Male", "Female", "Other"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 30.0 , right: 30 , top: 70),
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,

            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined ,size: 24,),
                  Text('Fill Your Profile' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                  SizedBox(width: 24,)
                ],
              ),
              SizedBox(height: 41,),
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Image.asset('assets/pic.png' , height: 150,),
                  Padding(
                    padding: const EdgeInsets.only(top: 110.0),
                    child: Container(
                      height: 30,
                      width: 30,

                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: Image.asset('assets/Edit.png'),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 25,),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: 'EDEFFA'.toColor(), width: 1.5),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(

                  decoration: InputDecoration(counterText: '',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide.none,

                    ),


                    hintText: 'Full Name',
                    hintStyle: TextStyle(fontWeight: FontWeight.w500 , color: 'A7A9B7'.toColor(), fontSize: 14)
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: 'EDEFFA'.toColor(), width: 1.5),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(

                  decoration: InputDecoration(counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,

                      ),


                      hintText: 'E-mail',
                      hintStyle: TextStyle(fontWeight: FontWeight.w500 , color: 'A7A9B7'.toColor(), fontSize: 14)
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: 'EDEFFA'.toColor(), width: 1.5),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: TextField(keyboardType: TextInputType.number,maxLength: 10,

                  decoration: InputDecoration(counterText: '',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide.none,

                      ),
                      suffixIcon: Icon(Icons.calendar_month_outlined , color: 'A7A9B7'.toColor()),


                      hintText: 'Date of birth',
                      hintStyle: TextStyle(fontWeight: FontWeight.w500 , color: 'A7A9B7'.toColor(), fontSize: 14)
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Container(
                width: double.maxFinite,
                height: 60,
                decoration: BoxDecoration(
                    border: Border.all(color: 'EDEFFA'.toColor(), width: 1.5),
                    borderRadius: BorderRadius.circular(10)
                ),
                child:  DropdownButton(
                  
                  underline: SizedBox(),
                  hint: Text('Gender'),
                  //value: currentItem,
                  items: items
                      .map<DropdownMenuItem<String>>(
                        (e) => DropdownMenuItem(
                      value: e,
                      child: Text(e),
                    ),
                  )
                      .toList(),
                  onChanged: (String? value) => setState(
                        () {
                      if (value != null) currentItem = value;
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20 , bottom: 30),
                child: GestureDetector(
                  onTap: (){
                    PersistentNavBarNavigator.pushNewScreen(
                      context,
                      screen: permission(),
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

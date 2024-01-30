import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';
import 'package:getto/order/myorders.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class orderdetails extends StatefulWidget {
  const orderdetails({super.key});

  @override
  State<orderdetails> createState() => _orderdetailsState();
}

class _orderdetailsState extends State<orderdetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0 ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap:(){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: myorders(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );
                        },
                        child: Icon(Icons.arrow_back_outlined, size: 20,)),
                    Text('Order Details' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                    SizedBox(width: 20,)

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0 , right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Order ID #625262735274' , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),),
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
              Row(
                children: [
                  Container(
                    height: 44,width: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      gradient: LinearGradient(colors: ['00D0BB'.toColor(),'007EA9'.toColor()])
                    ),
                    child: Center(child: Image.asset('assets/bottom/Buy.png',color: Colors.white,height: 24,)),
                  ),
                  Column(
                    children: [
                      Text('S')
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/order/myorders.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class trackorder extends StatefulWidget {
  const trackorder({super.key});

  @override
  State<trackorder> createState() => _trackorderState();
}

class _trackorderState extends State<trackorder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: (){
                          PersistentNavBarNavigator.pushNewScreen(
                            context,
                            screen: myorders(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.cupertino,
                          );

                        },
                        child: Icon(Icons.arrow_back_ios_new , size: 20,)),
                    Center(child: Text('My Orders' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),)),
                    SizedBox(width: 20,)
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Image.asset('assets/finallocation.png' , height: MediaQuery.of(context).size.height -95,width: double.maxFinite,fit: BoxFit.fill,)
            ],
          ),
        ),
      ),
    );
  }
}

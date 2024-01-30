import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class offers extends StatefulWidget {
  const offers({super.key});

  @override
  State<offers> createState() => _offersState();
}

class _offersState extends State<offers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 55.0 , left: 20 , right: 20),
            child: Column(
              children: [
                Text('Special Offers' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                SizedBox(height: 20,),
                Image.asset('assets/offer1.png'),
                SizedBox(height: 15,),
                Image.asset('assets/offer2.png'),
                SizedBox(height: 15,),
                Image.asset('assets/offer3.png'),
                SizedBox(height: 15,),
                Image.asset('assets/offer4.png'),
                SizedBox(height: 15,),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

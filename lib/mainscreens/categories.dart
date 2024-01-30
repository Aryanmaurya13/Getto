import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';

class categories extends StatefulWidget {
  const categories({super.key});

  @override
  State<categories> createState() => _categoriesState();
}

class _categoriesState extends State<categories> {
  bool men = true;
  bool women = false;
  bool kids = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 55.0 , left: 20 , right: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text('Category' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          men = true;
                          women = false;
                          kids = false;
                        });
                      },
                      child: Container(
                        height: 46,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                            gradient: LinearGradient(colors: [(men == true)?'00D0BB'.toColor():'F4F5FA'.toColor() , (men == true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                        ),
                        child: Center(child: Text('Men' , style: TextStyle(color: (men == true)?Colors.white:Colors.black , fontSize: 14  ,fontWeight: FontWeight.w600),)),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          men = false;
                          women = true;
                          kids = false;
                        });
                      },
                      child: Container(
                        height: 46,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                            gradient: LinearGradient(colors: [(women == true)?'00D0BB'.toColor():'F4F5FA'.toColor() , (women == true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                        ),
                        child: Center(child: Text('Women' , style: TextStyle(color: (women == true)?Colors.white:Colors.black , fontSize: 14  ,fontWeight: FontWeight.w600),)),
                      ),
                    ),
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          men = false;
                          women = false;
                          kids = true;
                        });
                      },
                      child: Container(
                        height: 46,

                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topRight: Radius.circular(10), bottomRight:Radius.circular(10),bottomLeft: Radius.circular(10), ),
                            gradient: LinearGradient(colors: [(kids == true)?'00D0BB'.toColor():'F4F5FA'.toColor() , (kids == true)?'007EA9'.toColor():'F4F5FA'.toColor()])
                        ),
                        child: Center(child: Text('Kids' , style: TextStyle(color: (kids == true)?Colors.white:Colors.black , fontSize: 14  ,fontWeight: FontWeight.w600),)),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/topwear.png' , height: 150,),
                        Text('Topwear' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 18,),
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/bottomwear.png' , height: 150,),
                        Text('Bottomwear' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/footwear.png' , height: 150,),
                        Text('Footwear' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 18,),
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/watch.png' , height: 150,),
                        Text('Watches' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/festive.png' , height: 150,),
                        Text('Festivewear' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 18,),
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/sunglass.png' , height: 150,),
                        Text('Sunglasses' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                children: [
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/gadget.png' , height: 150,),
                        Text('Gadgets' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                  SizedBox(width: 18,),
                  Expanded(
                    child: Stack(alignment: AlignmentDirectional.center,
                      children: [
                        Image.asset('assets/categories/accessories.png' , height: 150,),
                        Text('Accessories' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w500 , color: Colors.white),)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15,),
            ],
          ),
        ),
      ),
    );
  }
}

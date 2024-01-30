import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getto/main.dart';

class footwear extends StatefulWidget {
  const footwear({super.key});

  @override
  State<footwear> createState() => _footwearState();
}

class _footwearState extends State<footwear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 55.0 , left: 19 , right: 19),
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_outlined , size: 24,),
                  Text('Footwear' , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.w600),),
                  SizedBox(width: 24,)
                ],
              ),
              SizedBox(height: 10,),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 12,
                    mainAxisExtent: 320
                  ),
                  scrollDirection: Axis.vertical,
                  children: List.generate(6, (index) {
                    return Center(
                      child: SelectCard(choice: choices[index],),
                    );
                  })
                )
              ),
            SizedBox(height: 20,)],
          ),
        ),
      ),
    );
  }
}
class Choice {
  const Choice({required this.image,required this.title, required this.des ,required this.price1, required this.price2 });
  final String image;
  final String title;
  final String des;
  final String price1;
  final String price2;

}
const List<Choice> choices = const <Choice>[
   Choice(title: 'Puma',image: 'assets/footwear/shoe1.png', des: 'Men Blue & White Striped\nShoes', price1: 'Rs 2150' , price2:'Rs 5399'),
   Choice(title: 'Mactree',image: 'assets/footwear/shoe2.png', des: 'Men Brown Solid Formal Derbys', price1: 'Rs 1090' , price2:'Rs 1399'),
   Choice(title: 'Campus',image: 'assets/footwear/shoe3.png', des: 'Men Black Mesh Running Shoes', price1: 'Rs 1050' , price2:'Rs 1399'),
   Choice(title: 'Red Tape',image: 'assets/footwear/shoe4.png', des: 'Men Colourblocked Sneakers', price1: 'Rs 1399' , price2:'Rs 5599'),
  Choice(title: 'Puma',image: 'assets/footwear/shoe1.png', des: 'Men Blue & White Striped\nShoes', price1: 'Rs 2150' , price2:'Rs 5399'),
  Choice(title: 'Mactree',image: 'assets/footwear/shoe2.png', des: 'Men Brown Solid Formal Derbys', price1: 'Rs 1090' , price2:'Rs 1399'),

];
class SelectCard extends StatelessWidget {
  const SelectCard({ Key? key, required this.choice}) : super(key: key);
  final Choice choice;

  @override
  Widget build(BuildContext context) {

    return Container(height :320,width: 188,
      decoration: BoxDecoration(
        color: 'F4F5FA'.toColor(),
        borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15),)

      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top:6 , right: 6 , left: 6),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(child: Image.asset(choice.image, height: 205,width:175 ,fit: BoxFit.fill,)),

                ],
              ),
              SizedBox(height: 10,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(choice.title, style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 13 , color: '999999'.toColor()),),

                  Row(
                    children: [
                      Image.asset('assets/star.png' , height: 15),
                      SizedBox(width: 5,),
                      Text('4.2', style: TextStyle(fontWeight: FontWeight.w500 , fontSize: 13))
                    ],
                  )
                ],
              ),
              SizedBox(height: 7,),
              Text(choice.des , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 14 ),),
              Spacer(),
              Row(
                children: [
                  Text(choice.price1 , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 15),),
                  SizedBox(width: 12,),
                  Text(choice.price2 , style: TextStyle(fontWeight: FontWeight.w400 , fontSize: 15, decoration: TextDecoration.lineThrough , color: '999999'.toColor()),),
                ],
              ),
              SizedBox(height: 10,)


            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Terms_Row_view extends StatelessWidget {
  const Terms_Row_view({super.key, required this.Title});
  final String Title;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(Title , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.w600),),
        Padding(
          padding: const EdgeInsets.only(right: 10.0 ,top: 24 , bottom: 24),
          child: Icon(Icons.arrow_forward_ios , size: 16,),
        ),
      ],
    );
  }
}

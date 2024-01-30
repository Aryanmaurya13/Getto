import 'package:flutter/cupertino.dart';
import 'package:getto/main.dart';

class Text_Description_view extends StatelessWidget {
  const Text_Description_view({super.key, required this.Description});
  final String Description;

  @override
  Widget build(BuildContext context) {
    return Text(Description, style: TextStyle(color: '555555'.toColor(), fontSize: 14 , fontWeight: FontWeight.w400),);
  }
}

import 'package:flutter/cupertino.dart';

class Text_Heading_view extends StatelessWidget {
  const Text_Heading_view({super.key, required this.Heading});
  final String Heading;

  @override
  Widget build(BuildContext context) {
    return Text(Heading , style: TextStyle(fontWeight: FontWeight.w600 , fontSize: 16),);
  }
}

import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({super.key,required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
    text,
    style: TextStyle(
      fontSize:30,
      color:Colors.white
    ),
    );
  }
}
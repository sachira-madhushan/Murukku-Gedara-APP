import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  const InputText({super.key,required this.hintText,required this.prefixIcon});
  
  final Icon prefixIcon;
  final String hintText;

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          prefixIcon:widget.prefixIcon,
          hintText:widget.hintText, 
        ),
      ),
    );
  }
}
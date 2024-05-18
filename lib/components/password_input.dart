import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:murukkugedara/utils/color_utils.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key,required this.hintText,required this.prefixIcon});
  
  final IconData prefixIcon;
  final String hintText;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15,horizontal:20),
      child: Container(
      
        width: double.infinity,
        height:60,
        child: Stack(
          children: [
            Positioned(
              left:22,
              top:18,
              child: Icon(widget.prefixIcon,color: ColorUtils.primary,)),
            Positioned(
              left:71,
              top:2,
              width:340,
              child: Padding(
                padding: const EdgeInsets.only(right: 5),
                child: TextField(
                  style: TextStyle(fontSize: 18),
                  decoration:InputDecoration(
                    border:UnderlineInputBorder(borderSide: BorderSide.none),
                    hintText: widget.hintText,
                    
                  ),
                ),
              ),
            ),
             Positioned(
              right:15,
              top:8,
              child: IconButton(
                onPressed: (){
                  
                },
                icon:Icon(widget.prefixIcon,color: const Color.fromARGB(255, 6, 6, 6),))),
         ],
        ),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color.fromARGB(255, 255, 255, 255),
          boxShadow: [
            BoxShadow(color: Color.fromARGB(75, 101, 101, 101),blurRadius:50),
          ]
        ),
      ),
    );
  }
}
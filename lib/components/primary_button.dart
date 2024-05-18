import 'package:flutter/material.dart';
import 'package:murukkugedara/utils/color_utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        
      },
      child: Container(
        child: Center(child: Text("Login",style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),)),
        width: 375,
        height: 70,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          color:ColorUtils.backgroundLow,
          boxShadow: [
              BoxShadow(color: Color.fromARGB(75, 101, 101, 101),blurRadius:50),
          ]
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:murukkugedara/components/input_text.dart';
import 'package:murukkugedara/components/password_input.dart';
import 'package:murukkugedara/components/primary_button.dart';
import 'package:murukkugedara/components/title_text.dart';
import 'package:murukkugedara/screens/home_screen.dart';
import 'package:murukkugedara/screens/registration_screen.dart';
import 'package:murukkugedara/utils/color_utils.dart';
import 'package:murukkugedara/utils/image_utils.dart';
import 'package:murukkugedara/utils/navigate_utils.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Positioned(
            top:120,
            left:50,
            right:50,
            child:ImageUtils.pngImage("logoRed.png")),
            Positioned(
              bottom:0,
              left:0,
              right:0,
              child: Container(
                child: Column(
                  children:[
                    SizedBox(height:37,),
                    TitleText(text:"Forgot Password"),
                    SizedBox(height:35,),
                    InputText(hintText: "Email", prefixIcon:Icons.email),
                    SizedBox(height:10,),
                    PrimaryButton(context: context,text: "Send Password Reset Email",route:Home()),
                    
                  ],
                ),
                height:320,
                decoration:BoxDecoration(
                  color:ColorUtils.primary,
                  borderRadius: BorderRadiusDirectional.only(topStart:Radius.circular(35),topEnd:Radius.circular(35))
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
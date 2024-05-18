import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:murukkugedara/components/input_text.dart';
import 'package:murukkugedara/components/password_input.dart';
import 'package:murukkugedara/components/primary_button.dart';
import 'package:murukkugedara/components/title_text.dart';
import 'package:murukkugedara/utils/color_utils.dart';
import 'package:murukkugedara/utils/image_utils.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Positioned(
            top:70,
            left:50,
            child:ImageUtils.pngImage("logoRed.png")),
            Positioned(
              bottom:0,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(height:37,),
                    TitleText(text:"Login"),
                    SizedBox(height:35,),
                    InputText(hintText: "Login", prefixIcon:Icons.email),
                    PasswordInput(hintText: "Login", prefixIcon:Icons.email),
                    Text("Forgot Password",style:TextStyle(color: Colors.white),),
                    SizedBox(height:10,),
                    PrimaryButton(),
                    SizedBox(height:7,),
                    Text("Don’t have an account? Create account",style:TextStyle(color: Colors.white),)
                  ],
                ),
                height:430,
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
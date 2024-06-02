import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:murukkugedara/components/input_text.dart';
import 'package:murukkugedara/components/password_input.dart';
import 'package:murukkugedara/components/primary_button.dart';
import 'package:murukkugedara/components/title_text.dart';
import 'package:murukkugedara/screens/forgot_password.dart';
import 'package:murukkugedara/screens/home_screen.dart';
import 'package:murukkugedara/screens/main_screen.dart';
import 'package:murukkugedara/screens/registration_screen.dart';
import 'package:murukkugedara/utils/color_utils.dart';
import 'package:murukkugedara/utils/image_utils.dart';
import 'package:murukkugedara/utils/navigate_utils.dart';

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
                    TitleText(text:"Login"),
                    SizedBox(height:35,),
                    InputText(hintText: "Email", prefixIcon:Icons.email),
                    PasswordInput(hintText: "Password", prefixIcon:Icons.lock,sufixIcon: Icons.visibility,),
                    GestureDetector(onTap: (){
                      NavigateUtils.navigateTo(context,ForgotPassword());
                    }, child: Text("Forgot Password?",style:TextStyle(color: Colors.white),)),
                    SizedBox(height:10,),
                    PrimaryButton(context: context,text: "Login",route:MainScreen()),
                    SizedBox(height:7,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don’t have an account?",style:TextStyle(color: Colors.white),),
                      GestureDetector(child: Text(" Create account",style:TextStyle(color: Colors.white)),onTap: (){
                    NavigateUtils.navigateToAndRemove(context,Register());
                  },)
                    ],
                  )
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
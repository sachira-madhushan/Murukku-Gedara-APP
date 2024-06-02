import 'package:flutter/material.dart';
import 'package:murukkugedara/components/input_text.dart';
import 'package:murukkugedara/components/password_input.dart';
import 'package:murukkugedara/components/primary_button.dart';
import 'package:murukkugedara/components/title_text.dart';
import 'package:murukkugedara/screens/home_screen.dart';
import 'package:murukkugedara/screens/login_screen.dart';
import 'package:murukkugedara/utils/color_utils.dart';
import 'package:murukkugedara/utils/image_utils.dart';
import 'package:murukkugedara/utils/navigate_utils.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:Stack(
          children: [
            Container(
              child: SingleChildScrollView(
                child: Column(children: [
                  SizedBox(height:37,),
                  TitleText(text:"Register"),
                  SizedBox(height:35,),
                  InputText(hintText: "Name", prefixIcon:Icons.person_2),
                  InputText(hintText:"Email", prefixIcon: Icons.email),
                  InputText(hintText:"Phone", prefixIcon: Icons.phone),
                  InputText(hintText:"Address", prefixIcon: Icons.location_pin),
                  PasswordInput(hintText: "Password", prefixIcon:Icons.lock,sufixIcon: Icons.visibility,),
                  PasswordInput(hintText: "Confirm Password", prefixIcon:Icons.lock,sufixIcon: Icons.visibility,),
                  SizedBox(height:10,),
                  PrimaryButton(context: context,text: "Register",route:Home()),
                  SizedBox(height:7,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?",style:TextStyle(color: Colors.white),),
                  GestureDetector(child: Text("Login",style:TextStyle(color: Colors.white)),onTap: (){
                    NavigateUtils.navigateToAndRemove(context,Login());
                  },)
                    ],
                  )
                ],),
              ),
              height: double.infinity,
              decoration:BoxDecoration(
                color:ColorUtils.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
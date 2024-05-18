import 'package:flutter/material.dart';
import 'package:murukkugedara/components/input_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Stack(
        children: [
          InputText(hintText: "Login", prefixIcon: Icon(Icons.email))
        ],
      ),
    );
  }
}
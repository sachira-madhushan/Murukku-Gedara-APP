import 'package:flutter/material.dart';
import 'package:murukkugedara/utils/image_utils.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body:Column(
        children: [
          Center(child: ImageUtils.pngImage("logoRed.png")),
        ],
      ),
    ));
  }
}
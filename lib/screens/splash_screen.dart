import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:murukkugedara/screens/home_screen.dart';
import 'package:murukkugedara/screens/login_screen.dart';
import 'package:murukkugedara/utils/color_utils.dart';
import 'package:murukkugedara/utils/image_utils.dart';
import 'package:murukkugedara/utils/navigate_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2),(){
      NavigateUtils.navigateToAndRemove(context,const Login());
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child:ImageUtils.pngImage("logoWhite.png"),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors:[
          ColorUtils.backgroundLow,
          ColorUtils.primary,
         
        ])
      ),
    );
  }
}
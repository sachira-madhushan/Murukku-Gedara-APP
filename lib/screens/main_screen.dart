import 'package:flutter/material.dart';
import 'package:murukkugedara/screens/home_screen.dart';
import 'package:murukkugedara/utils/color_utils.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index=0;

  List<Widget> screenList=[Home(),];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: Scaffold(

        body:screenList[index],
        bottomNavigationBar:BottomNavigationBar(
          currentIndex:index,
          onTap: (value) {
            setState(() {
              index= value;
            });
          },
          backgroundColor: ColorUtils.primary,
          fixedColor: Colors.white,
          unselectedItemColor:Color.fromARGB(192, 238, 238, 238) ,
          type: BottomNavigationBarType.fixed,
          items:[
          BottomNavigationBarItem(icon:Icon(Icons.home),label:"Home"),
          BottomNavigationBarItem(icon: Icon(Icons.call),label: "Contact"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ]),
      ),
    );
  }
}
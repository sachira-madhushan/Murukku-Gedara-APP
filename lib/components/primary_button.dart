import 'package:flutter/material.dart';
import 'package:murukkugedara/utils/color_utils.dart';
import 'package:murukkugedara/utils/navigate_utils.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key,required this.text,required this.context,required this.route});
  final String text;
  final BuildContext context;
  final Widget route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        NavigateUtils.navigateToAndRemove(context, route);
      },
      child: Container(
        child: Center(child: Text(text,style: TextStyle(
          color: Colors.white,
          fontSize: 18
        ),)),
        width: 355,
        height: 50,
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(20),
          color:ColorUtils.backgroundLow,
          boxShadow: [
              BoxShadow(color: Color.fromARGB(64, 101, 101, 101),blurRadius:50),
          ]
        ),
      ),
    );
  }
}
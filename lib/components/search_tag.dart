import 'package:flutter/material.dart';
import 'package:murukkugedara/utils/color_utils.dart';

class SearchTag extends StatelessWidget {
  const SearchTag({super.key,required this.tag,required this.active});
  final String tag;
  final bool active;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width:100,
        height:50,
        child: Center(child: Text(tag,style: TextStyle(color: Colors.white),)),
       decoration: BoxDecoration(
        color:active? ColorUtils.primary:Color.fromARGB(33, 0, 0, 0),
        borderRadius: BorderRadius.all(Radius.circular(10))
       ),
       ),
    );

  }
}
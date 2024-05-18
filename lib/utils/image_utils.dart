import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageUtils{
  static String imagePath="assets/images/";
  static SvgPicture svgImage(String image){
    
    return SvgPicture.asset(imagePath+image);
  }

  static Image pngImage(String image){
    return Image.asset(imagePath+image);
  }
}
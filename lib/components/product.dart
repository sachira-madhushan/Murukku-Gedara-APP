import 'package:flutter/material.dart';
import 'package:murukkugedara/utils/image_utils.dart';

class Product extends StatelessWidget {
  const Product({super.key,required this.productName,required this.rating});
  final String productName;
  final int rating;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 225,
      width:180,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageUtils.pngImage("peniwalalu.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(productName),
          ),
          
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child:Row(
                    children: [
                      Icon(Icons.star,color:Colors.orange,),
                      Text(rating.toString())
                    ],
                  )
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child:IconButton(onPressed: () {
                    
                  },icon:Icon(Icons.favorite_border)),
                ),
              )
            ],
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(color:Color.fromARGB(36, 0, 0, 0),blurRadius:5,spreadRadius: 1)
        ]
      ),
    );
  }
}
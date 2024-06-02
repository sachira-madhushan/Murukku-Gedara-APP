import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:murukkugedara/components/product.dart';
import 'package:murukkugedara/components/search_tag.dart';
import 'package:murukkugedara/utils/image_utils.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ImageUtils.pngImage("logoBlack.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SearchBar(hintText: "Search",leading: Icon(Icons.search),backgroundColor: MaterialStatePropertyAll(Colors.white),),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
              children: [
                SearchTag(tag: "All",active: true,),
            SearchTag(tag: "Bundi",active: false,),
            SearchTag(tag: "Murukku",active: false,),
              SearchTag(tag: "Peniwalalu",active: false,),
              ],
            ),),

            Expanded(child: 
               GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              mainAxisSpacing: 10, // Spacing between rows
              crossAxisSpacing: 10, // Spacing between columns
              childAspectRatio:0.8, // Aspect ratio of each item
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Product(productName:"Bundi",rating: 5,),
              );
            },
          ),
            )
          ]
        ),
      ),
    );
  }
}
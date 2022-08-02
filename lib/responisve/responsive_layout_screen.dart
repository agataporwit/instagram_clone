import 'package:flutter/material.dart';
import 'package:instagram_clone/utils/dimentions.dart';


class ResponsiveLayout extends StatelessWidget {
   //call widget from the constructor 
  final Widget webScreenLayout;
  final Widget mobileScreenLayout;
  const ResponsiveLayout({Key? key, required this.webScreenLayout, required this.mobileScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
      if(constraints.maxWidth > webScreenSize){
        return webScreenLayout;
      }
      //mobile screen
      return mobileScreenLayout;
    },
    );
  }
}
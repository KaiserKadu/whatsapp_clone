import 'package:flutter/material.dart';


class ResponsiveLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveLayout({Key? key,required this.mobileScreenLayout,required this.webScreenLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth > 800){
          return webScreenLayout;
        }
        else{
          return mobileScreenLayout;
        }
      },
    );
  }
}
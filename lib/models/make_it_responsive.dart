import 'package:flutter/material.dart';

class MakeItResponsive {

  double minPOint = 640;
  double maxPOint = 1000;

  ScreenSize getScreenSize(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if(size.width > maxPOint){
      return ScreenSize.large;
    }else if(size.width < minPOint){
      return ScreenSize.small;
    }else{
      return ScreenSize.medium;
    }
  }
}

enum ScreenSize { small, medium, large}
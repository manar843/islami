 import 'package:flutter/material.dart';
 import 'app_color.dart';
import 'main.dart';
class MyThemeData {
 static final ThemeData dartTheme = ThemeData (
    scaffoldBackgroundColor: Colors.transparent,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData  (
   selectedItemColor:AppColors.whiteColor ,
   unselectedItemColor: AppColors.blackColor,
   showUnselectedLabels: false,

  ),
     appBarTheme: AppBarTheme(
     iconTheme: IconThemeData(
       color: AppColors.primaryColor
     )
 )
 );


 }

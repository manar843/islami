import 'package:flutter/material.dart';
import 'package:islami/splash_screen.dart';
import 'package:islami/tabes/quran/sura_detailes_screen.dart';
import 'home_screen.dart';


void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({super.key});

   @override
   Widget build(BuildContext context) {
     return  MaterialApp(
       debugShowCheckedModeBanner: false,
       initialRoute: SplashScreen.routeName,
       routes: {
         SplashScreen.routeName: (context) => SplashScreen(),
         HomeScreen.routeName: (context) => HomeScreen(),
         SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
       },
       themeMode : ThemeMode.dark,

     );
   }
 }

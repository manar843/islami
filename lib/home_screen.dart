import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/tabes/hdyth/hdyth_tabe.dart';
import 'package:islami/tabes/quran/quran_tabe.dart';
import 'package:islami/tabes/radio/radio_tabe.dart';
import 'package:islami/tabes/sbha/sbha_tabe.dart';
import 'package:islami/tabes/time/time_tabe.dart';
import 'app_color.dart';
class HomeScreen extends StatefulWidget {
 static const String routeName ='home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int  selectedindex=0;
List<String>backgroundImage= [
  'assets/images/quran.background.png',
      'assets/images/hdyth_bg.png',
      'assets/images/radio_bg.png',
      'assets/images/BackgroundSPHA.png',
      'assets/images/time_bg.png',

];
  List<Widget>Tabs= [
    QuranTabe(),
    HadythTabe(),
    RadioTabe(),
    SebhaPage(),
    TimeTabe(),

     ];

@override
  Widget build(BuildContext context) {
    return Scaffold(

        body :
     Stack(children: [ Container(
       child: Image.asset(backgroundImage[selectedindex]
          ,width: double.infinity,height:double.infinity,fit:BoxFit.cover
       ),
     ),
       Tabs[selectedindex]
     ],
   ),

      bottomNavigationBar:  BottomNavigationBar
        (
        currentIndex: selectedindex ,
          onTap: (index){
            selectedindex=index;
            setState(() {

            });
          },
          backgroundColor:AppColors.primaryColor ,
          type:  BottomNavigationBarType.fixed,
       //  selectedItemColor:AppColors.whiteColor ,
       //   unselectedItemColor: AppColors.blackColor,
          showUnselectedLabels: false,
          items :[
            BottomNavigationBarItem(icon: builtItemNavBar(index: 0, imageName: 'quran'),
                label:'quran'  ) ,

            BottomNavigationBarItem(icon:
            builtItemNavBar(index:1, imageName: 'hadyth'),
                label:'hdyth'  ),

           BottomNavigationBarItem(icon:
           builtItemNavBar(index: 2, imageName: 'radio-icon'),
                label:'radio'  ),

               BottomNavigationBarItem(icon:
               builtItemNavBar(index: 3, imageName: 'sbha'),
                   label:'spha'  ),

            BottomNavigationBarItem(icon:
            builtItemNavBar(index: 3, imageName: 'time'),
                label:'time'  ),

      ]
      )

    )  ;

  }
Widget builtItemNavBar({required int index,required String imageName} ) {
    return selectedindex ==index?
    Container(
        padding: EdgeInsets.symmetric(vertical: 6,horizontal: 19),
        decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(66) ,
            color: AppColors.whiteColorBg
        ),
        child: Image.asset('assets/images/$imageName.png'), )
    :
  Image.asset('assets/images/$imageName.png') ;
}

}


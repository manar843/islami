import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/hadyth_model.dart';

import '../../app_color.dart';
import 'hdyth_detailes_screen.dart';

class HadythTabe extends StatefulWidget {
  @override

  State<HadythTabe> createState() => _HadythTabeState();
}

class _HadythTabeState extends State<HadythTabe> {



  List<HadythModel>hadythList=[];


  @override
  void initState() {

    // TODO: implement initState
    loadHadythFile();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Column(
      children: [
        Image.asset('assets/images/Logo.png'),
        CarouselSlider.builder(
          itemCount: hadythList.length,
          itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex)
          =>
              InkWell(
                onTap: (){
                  Navigator.of(context).pushNamed(HdythDetailsScreen.routeName,
                      arguments: hadythList[itemIndex]
                  );
                },
                child: Container(
                  padding: EdgeInsets.all(13),
                   decoration:   BoxDecoration(
                     borderRadius: BorderRadius.circular(18),
                    color:AppColors.primaryColor ,

                   ),

                  child: hadythList.isEmpty?
                      const Center(child: CircularProgressIndicator(
                        color: AppColors.primaryColor,
                      ))
                      :

                  Column(
                    children: [
                      Text(hadythList[itemIndex].title,style:
                      TextStyle( fontSize: 20 ),),
                    Expanded(
                      child: Text(hadythList[itemIndex].content.join(''),
                    style: TextStyle( fontSize: 20 ),),
                    )
                    ],
                  ),
                ),
              ), options: CarouselOptions(
          height: 450,
          viewportFraction: 0.75,
       enlargeCenterPage: true,

        ),
        ),
      ],
    );
  }

  void loadHadythFile()async{
   for(int i =1;i<=50;i++){
 String hadythContent   =await rootBundle.loadString('assets/files/h$i.txt');
List <String>hadythLines =hadythContent.split('\n') ;
String title =hadythLines[0];
 hadythLines.removeAt(0);
 HadythModel hadythModel =HadythModel(title:title,content: hadythLines );
 hadythList.add(hadythModel );
 setState(() {

 });

   }


  }
 }

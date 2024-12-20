import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/sura_model.dart';
import 'package:islami/tabes/quran/sura_content_items.dart';
import 'package:islami/theme_data.dart';

import '../../app_color.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName='sura_details_screen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses=[];

  @override

  Widget build(BuildContext context) {
    var args =  ModalRoute.of(context)?.settings.arguments as SuraModel;
    if(verses.isEmpty){
      loadSuraFile(args.index);
    }

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title:Text(args.suraEnName ,style: TextStyle(color:AppColors.primaryColor), ) ,
        backgroundColor:AppColors.blackColor ,
      ),

      body :
      Stack(
        alignment: Alignment.topCenter,
        children: [

          Container(
           child: Image.asset('assets/images/Soura Details Screen.png',
                width: double.infinity,height:double.infinity,fit:BoxFit.cover
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox( height: 20,) ,
              Text(args.numOfVerses,style:
              TextStyle(color: AppColors.primaryColor),),
              SizedBox( height: 22,),
              Expanded(
                child:verses.isEmpty?
                    const Center(child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ))
                :
                ListView.builder
                  (
                    itemBuilder: (context,index){
                      return  SuraContentItems(content:verses [index], index: index,);
                    },
                    itemCount:verses.length
                      ),
              )
            ],
          )

        ],
      ),
    );
  }

  Future<void> loadSuraFile(int index) async {
   String suraContent=await rootBundle.loadString('assets/files/${index+1}.txt');
 List<String>suraLines=   suraContent.split('\n');// بتقطع السطر
 for(int i =0;i<suraLines.length;i++){
   print(suraLines[i]);
 }
  verses=suraLines ;
 setState(() {

 });
  }
}

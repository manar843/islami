import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/app_color.dart';
import 'package:islami/model/sura_model.dart';
import 'package:islami/tabes/quran/sura_detailes_screen.dart';
import 'package:islami/tabes/quran/sura_list.dart';
class QuranTabe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      Container(
        margin: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset('assets/images/Logo.png'),
          TextField(
            cursorColor: AppColors.whiteColor,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder( borderRadius:
              BorderRadius.circular(20),
              borderSide: const BorderSide(color:  AppColors.primaryColor  ,width: 3    )
              ),
            focusedBorder:  OutlineInputBorder( borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color:  AppColors.primaryColor)
            ),
           prefixIcon: const ImageIcon(color:AppColors.primaryColor ,
               AssetImage('assets/images/icon_search.png') ),
              hintText: 'sura name',
              hintStyle: const TextStyle(color:AppColors.whiteColor )
            ),


          ),
          const SizedBox(height: 15  ),
          const Text('Most Recently ',style: TextStyle(color:AppColors.whiteColor ),),
          const SizedBox(height: 10  ),
          Container(
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                color:AppColors.primaryColor ),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(

                  children: [
                    Text('sura en'),
                    Text('sura ar'),
                    Text('aya num '),
                  ],
                ),
                Image.asset('assets/images/man_read.png')
              ],
            ),
          ),
          const SizedBox(height: 10 ),
          const Text('sures list',style:
          TextStyle(color:AppColors.primaryColor ,fontSize:21 ),),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemBuilder: (context, index) {
                return InkWell(
                  onTap:(){
                 Navigator.of(context).pushNamed(SuraDetailsScreen.routeName,
    arguments:SuraModel.getSuraModel(index   ) ); // bsyt data 3yz astablha go to page SuraDetailsScreen give it var

                  }  ,
                  child: SuraList(
                     suraModel:SuraModel.getSuraModel(index  )
                  ),
                );
              },
              itemCount: SuraModel.suraArNameList.length,
            ),
          ),

        ],
            ),
      );
  }
}

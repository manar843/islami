import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami/model/hadyth_model.dart';

import '../../app_color.dart';
import 'hdyth_content_items.dart';

class HdythDetailsScreen extends StatelessWidget {
  static const String routeName ='hdyth_details';
  const HdythDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var args= ModalRoute.of(context)?.settings.arguments as HadythModel;
    return Scaffold(
      appBar:AppBar(
      backgroundColor: AppColors.primaryColor,
      ),
         body:    Stack(
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
                 Text(args.title
                   ,style:
                 TextStyle(color: AppColors.primaryColor),),
                 SizedBox( height: 20,) ,
                Expanded(child:  ListView.builder
                  (
                    itemBuilder: (context,index){
                      return  HdythContentItems(content: args.content[index]  );
                    },
                    itemCount:args.content.length
                ),)

               ],
             )

           ],
         ),
    );
  }
}

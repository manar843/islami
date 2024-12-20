import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../app_color.dart';

class RadioTabe  extends StatefulWidget {

  const RadioTabe ({super.key});


  @override
  State<RadioTabe> createState() => _RadioTabeState();
}

class _RadioTabeState extends State<RadioTabe> {
  @override
  Widget build(BuildContext context) {
    Color containerColor = AppColors.primaryColor;
    return Container(
      margin: const EdgeInsets.all(14),
      child: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images/Logo.png'),
              SizedBox (height: 17 ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                    Container(

                                    padding: EdgeInsets.only(left: 40,right: 40,top:10,bottom: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: AppColors.primaryColor,
                      ),
                      child: const Text(
                        "Radio",
                        style: TextStyle(color: AppColors.blackColor),
                      ),
                    ),

                  const SizedBox(width: 10),
                  InkWell(

                    child: Container(
                      child: const Text(
                        "Reciters",
                        style: TextStyle(
                          fontSize: 16,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
           SizedBox (height: 10 ),
        Container(
            padding: EdgeInsets.only(left: 40,right: 40,top:10,bottom: 10),
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                color:AppColors.primaryColor ),
     child:  Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
       children: [
         Text(
           "Radio Ibrahim Al-Akdar",
           style: TextStyle(color: AppColors.blackColor),
         ),
     SizedBox(height:15),
     Image.asset('assets/images/icons_redio.png')
       ],
        )
        ),
              SizedBox (height: 10 ),
        Container(
                  padding: EdgeInsets.only(left: 40,right: 40,top:10,bottom: 10),
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color:AppColors.primaryColor ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Radio Ibrahim Al-Akdar",
                        style: TextStyle(color: AppColors.blackColor),
                      ),
                     SizedBox(height:15),
                      Image.asset('assets/images/icons_redio.png')
                    ],
                  )
              ),
              SizedBox (height: 10 ),
        Container(
                  padding: EdgeInsets.only(left: 40,right: 40,top:10,bottom: 10),
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color:AppColors.primaryColor ),
                  child:  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Radio Ibrahim Al-Akdar",
                          style: TextStyle(color: AppColors.blackColor),
                        ),
                        SizedBox(height:15),
                        Image.asset('assets/images/icons_redio.png')
                      ],
                    ),
                  )
              ),
              SizedBox (height: 10 ),
              Container(
                  padding: EdgeInsets.only(left: 40,right: 40,top:10,bottom: 10),
                  decoration: BoxDecoration(borderRadius:BorderRadius.circular(20) ,
                      color:AppColors.primaryColor ),
                  child:  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        "Radio Ibrahim Al-Akdar",
                        style: TextStyle(color: AppColors.blackColor),
                      ),
                      SizedBox(height:15),
                      Image.asset('assets/images/icons_redio.png')
                    ],
                  )
              ),
            ]
        ),
      ),

    );
  }


}




import 'package:flutter/cupertino.dart';
import 'package:islami/app_color.dart';

class SuraContentItems extends StatelessWidget {
  String content;
  int index ;
  SuraContentItems({required this.content ,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10)  ,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 60),
      decoration: BoxDecoration(
        borderRadius:  BorderRadius.circular(20),
        border: Border.all (
          color:AppColors.primaryColor
        )
      ),
      child: Text('$content[${index+1}]',
        textDirection: TextDirection.rtl,
        textAlign:  TextAlign.center,
        style:TextStyle(
          color: AppColors.primaryColor
        ) ,),
    );
  }
}

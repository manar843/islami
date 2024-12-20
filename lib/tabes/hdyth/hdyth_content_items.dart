import 'package:flutter/cupertino.dart';
import 'package:islami/app_color.dart';

class HdythContentItems  extends StatelessWidget {
  String content;

  HdythContentItems({required this.content });

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10)  ,
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 60),

      child: Text( content ,
        style:TextStyle(
          color: AppColors.primaryColor
        ) ,),
    );
  }
}

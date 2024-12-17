import 'package:flutter/cupertino.dart';
import 'package:islami/app_color.dart';

import '../../model/sura_model.dart';

class SuraList extends StatelessWidget {
  SuraModel suraModel;
   SuraList ({required this.suraModel });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image.asset('assets/images/Vector.png'),
            Text(
               '${suraModel.index}',
              style: TextStyle(color:AppColors.whiteColor),
            )
          ],
        ),
        SizedBox(width: 25),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${suraModel.suraEnName}',
                    style: TextStyle(color:AppColors.whiteColor),),
                  Text('${suraModel.numOfVerses} verses',
                    style: TextStyle(color:AppColors.whiteColor),)
                ],
              ),
            ],
          ),
        ),
        Text('${suraModel.suraArName }' ,
          style: TextStyle(color:AppColors.whiteColor),)
      ],
    );
  }
}

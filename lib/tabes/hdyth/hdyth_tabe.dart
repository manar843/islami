import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:islami/model/hadyth_model.dart';

class HadythTabe extends StatefulWidget {
  @override

  State<HadythTabe> createState() => _HadythTabeState();
}

class _HadythTabeState extends State<HadythTabe> {
  List<HadythModel>hadythList=[];

  @override
  Widget build(BuildContext context) {
    if(hadythList.isEmpty) {
      loadHadythFile();
     }

    return CarouselSlider.builder(
      itemCount: hadythList.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
          Container(
            child: Column(
              children: [
                Text(hadythList[itemIndex].title),
              Expanded(child: Text(hadythList[itemIndex].content.join('')
              ))
              ],
            ),
          ), options: CarouselOptions(
      height: 300,
      viewportFraction: 0.75,

    ),
    );
  }

  void loadHadythFile()async{
   for(int i =0 ;i<=50;i++){
 String hadythContent   =await rootBundle.loadString('assets/files/h$i.txt');
List <String>hadythLines =hadythContent.split('\n') ;
String title =hadythLines[0];
 hadythLines.removeAt(0);
 HadythModel hadythModel =HadythModel(title:title,content: hadythLines );
 hadythList.add(hadythModel );


   }
   setState(() {

   });

  }
}

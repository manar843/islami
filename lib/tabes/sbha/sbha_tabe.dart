
import 'package:flutter/material.dart';
import 'dart:math';

import '../../app_color.dart';

class SebhaPage extends StatefulWidget {
  @override
  _SebhaPageState createState() => _SebhaPageState();
}

class _SebhaPageState extends State<SebhaPage> with SingleTickerProviderStateMixin {
  int counter = 0;
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _animation = Tween<double>(begin: 0, end: pi / 15).animate(_controller);
  }

  void incrementTasbeeh() {
    setState(() {
      counter++;
      if (counter >= 100) {
        counter = 0;
      }
    });


    _controller.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        margin: const EdgeInsets.all(14),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage(' assets/images/quran.background.png'),
    fit: BoxFit.cover,

    )),
        child: Center(
          child: GestureDetector(
            onTap: incrementTasbeeh,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset('assets/images/Logo.png'),
                const Text('سَبِّحِ اسْمَ رَبِّكَ الأعلى ',
                  style: TextStyle(color:AppColors.primaryColor,fontSize:30,fontWeight:FontWeight.bold ),),
                SizedBox(height:40,),

                AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return Transform.rotate(
                      angle: _animation.value,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Image.asset(
                            'assets/images/EL Sebha.png',
                            width: 400,
                            height: 400,
                          ),

                          SizedBox(height: 15,),
                          Text(
                            'سبحان الله $counter',
                            style: const TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold,color:AppColors.primaryColor),
                          ),


                        ],
                      ),


                    );
                  }
                  )
                  ]  ),




            ),
          ),
      ),

    );
  }
}


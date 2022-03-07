import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:guied_me/screens/component.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class BookDetailScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffedeef4),
      body: ListView(
        primary: true,
        shrinkWrap: true,
        children: [
          SizedBox(height: h * 0.01,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(' Book Detail               ',
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Cairo',
                    color: Color(0xff3366cc)
                ),
              ),

              InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close,color: Colors.black,size: 35,))
            ],
          ),
          SizedBox(height: h * 0.01,),
          buildBookDetailCard(h: h,w: w),
          SizedBox(height: h * 0.01,),
          buildBookDetailWriterCard(w: w,h: h),
          SizedBox(height: h * 0.02,),
          Center(
            child: Text('Nearby Publishing House',
            style: TextStyle(
              color: Color(0xff3366cc),
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Cairo'
            ),
            ),
          ),
          SizedBox(height: h * 0.02,),
          buildPublishingHouseCard(w: w,h: h),
          SizedBox(height: h * 0.01,),
          buildPublishingHouseCard(w: w,h: h),
          SizedBox(height: h * 0.01,),
          buildPublishingHouseCard(w: w,h: h),
          SizedBox(height: h * 0.05,),
          Center(
            child: DefaultTextStyle(
              style: TextStyle(color: Color(0xff5f616e), fontSize: 25,
                  fontFamily: 'Cairo'
              ),
              child: AnimatedTextKit(
                isRepeatingAnimation: true,
                // isRepeatingAnimation: true,
                displayFullTextOnTap: false,
                repeatForever: true,
                animatedTexts: [
                  TypewriterAnimatedText('GUIED ME'),
                ],
              ),
            ),
          ),
          SizedBox(height: h * 0.02,),
        ],
      ),
    );
  }
}

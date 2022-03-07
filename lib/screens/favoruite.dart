import 'package:flutter/material.dart';
import 'package:guied_me/screens/book_detail.dart';
import 'package:guied_me/screens/component.dart';

class FavouriteScreen extends StatelessWidget {

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
              Text(' Favourite               ',
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
          SizedBox(
            width: w,
            height: h * 0.9,
            child: ListView.separated(
              primary: false,
                shrinkWrap: true,
                itemBuilder: (context,index){
                  return favouriteCard(w: w,h: h,
                  onPress: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BookDetailScreen()))
                  );
                },
                separatorBuilder: (context,index){
                  return SizedBox(height: 20,);
                },
                itemCount: 20),
          )
        ],
      ),
    );
  }
}

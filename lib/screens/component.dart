import 'package:flutter/material.dart';

Widget buildBookDetailCard({ required double h , required double w})=> Container(
  margin: EdgeInsets.symmetric(horizontal: h * 0.05),
  height: h * 0.33,
  width: w,
  padding: EdgeInsets.symmetric(vertical: 15),
  decoration: BoxDecoration(
    color: Colors.white,
    image: const DecorationImage(
      image: NetworkImage(
          "https://img.freepik.com/free-photo/opened-book-ledge_23-2147711742.jpg?w=996"),
      fit: BoxFit.cover,
    ),
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

      SizedBox(height: h * 0.03,),
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 80,
            decoration: BoxDecoration(
              color: Color(0xff3366cc),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "1180 L.E",
                style: TextStyle(fontWeight: FontWeight.w600,
                    fontFamily: 'Cairo',
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(width: 20,),
          Container(
            width: 120,
            decoration: BoxDecoration(
              color: Color(0xff3366cc),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Text(
                "Happiness",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      )
    ],
  ),
);
Widget buildBookDetailWriterCard({ required double h , required double w})=> Container(
  margin: EdgeInsets.symmetric(horizontal: h * 0.05),
  padding: EdgeInsets.symmetric(horizontal: w * 0.03,vertical: h * 0.03),
  height: h * 0.28,
  width: w,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      buildBookDetailWriterRow(
        h: h,
        w: w,
        icon: Icons.person_outline,
        title: 'Worte By: ',
        text: 'Ahmed Khaled'
      ),
      buildBookDetailWriterRow(
          h: h,
          w: w,
          icon: Icons.my_library_books,
          title: 'Pages: ',
          text: '100'
      ),
      buildBookDetailWriterRow(
          h: h,
          w: w,
          icon: Icons.local_library_outlined,
          title: 'Hull Number: ',
          text: '900'
      ),

      buildBookDetailWriterRow(
          h: h,
          w: w,
          icon: Icons.person_outline,
          title: 'suite: ',
          text: 'First'
      ),
      buildBookDetailWriterRow(
          h: h,
          w: w,
          icon: Icons.public_outlined,
          title: 'Publishing: ',
          text: '91 Dar Taskeel'
      ),

    ],
  ),
);
Widget buildPublishingHouseCard({required double h , required double w})=> Container(
  margin: EdgeInsets.symmetric(horizontal: h * 0.05),
  padding: EdgeInsets.symmetric(horizontal: w * 0.03),
  height: h * 0.13,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(15),
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      SizedBox(height: 20,),
      Row(
        children: [
          CircleAvatar(
            child: Icon(Icons.menu_book_outlined,color: Colors.white,size: 20,),
            radius: 20,
            backgroundColor: Color(0xff3366cc),
          ),
          SizedBox(width:  15,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Formation House',
                style: TextStyle(
                    color: Color(0xff3366cc),
                    fontFamily: 'Cairo',
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,
                    size: 15,
                    color: Colors.teal.shade300,
                  ),
                  Text('West',
                    style: TextStyle(
                        color: Colors.teal.shade300,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Cairo'
                    ),
                  ),
                  SizedBox(width: 120,),
                  Text('4.7 Km',
                    style: TextStyle(
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Color(0xff3366cc)
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
      Text('')
    ],
  ),
);

Widget buildBookDetailWriterRow({
  required double h ,
  required double w,
  required IconData icon,
  required String title,
  required String text,
})=> Row(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Icon(icon, color: Color(0xff3366cc),size: 25,),
    SizedBox(width: w * 0.01,),
    Text(
      title,
      style: TextStyle(
        color: Colors.black38,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 15,
      ),
    ),
    SizedBox(width: w * 0.01,),
    Text(
      text,
      style: TextStyle(
        color: Colors.black54,
        fontFamily: 'Cairo',
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    )
  ],
);
/////////////////////////////////////////////////////////////////////////////////
favouriteCard({required double h, required double w,GestureTapCallback? onPress}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      height: h * 0.2,
      margin: EdgeInsets.symmetric(horizontal: w * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(w * 0.05),
        boxShadow:  [
          BoxShadow(
              offset: Offset(0, 3),
              color: Colors.grey.shade300,
              spreadRadius: 3,
              blurRadius: 3)
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: w * 0.27,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius:
                  // (lang == 'en')
                  //     ?
                  BorderRadius.only(
                      topLeft: Radius.circular(w * 0.05),
                      bottomLeft: Radius.circular(w * 0.05)),
              // : BorderRadius.only(
              //     topRight: Radius.circular(w * 0.05),
              //     bottomRight: Radius.circular(w * 0.05)),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/opened-book-ledge_23-2147711742.jpg?w=996"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: w * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: w * 0.02,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Happiness",
                        style: TextStyle(
                          fontSize: 20,
                            fontFamily: 'Cairo',
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Icon(
                      //       Icons.location_on,
                      //       color: Colors.red,
                      //       size: w * 0.055,
                      //     ),
                      //     Text(
                      //       "Umm Sequim 3",
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.w400,
                      //           color: Colors.pinkAccent),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: w * 0.3,
                  ),
                  Container(
                    width: w * 0.09,
                    height: h * 0.09,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            color: Color(0xffedeef4),
                            spreadRadius: 3,
                            blurRadius: 3)
                      ],
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite,
                          size: w * 0.05,
                          color: Color(0xff3366cc),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: h * 0.035,
              // ),
              Text('Ahmed Khaled',
              style: TextStyle(
                color: Colors.red,
              fontFamily: 'Cairo',
                fontWeight: FontWeight.w700,
                fontSize: 15
              ),
              ),
              Text(
                "1180 L.E",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: w * 0.03,
          ),
        ],
      ),
    ),
  );
}
/////////////////////////////////////////////////////////////////////////
moreSoldCard({required double h, required double w,GestureTapCallback? onPress}) {
  return InkWell(
    onTap: onPress,
    child: Container(
      height: h * 0.2,
      margin: EdgeInsets.symmetric(horizontal: w * 0.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(w * 0.05),
        boxShadow:  [
          BoxShadow(
              offset: Offset(0, 3),
              color: Colors.grey.shade300,
              spreadRadius: 3,
              blurRadius: 3)
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: w * 0.27,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius:
              // (lang == 'en')
              //     ?
              BorderRadius.only(
                  topLeft: Radius.circular(w * 0.05),
                  bottomLeft: Radius.circular(w * 0.05)),
              // : BorderRadius.only(
              //     topRight: Radius.circular(w * 0.05),
              //     bottomRight: Radius.circular(w * 0.05)),
              image: const DecorationImage(
                image: NetworkImage(
                    "https://img.freepik.com/free-photo/opened-book-ledge_23-2147711742.jpg?w=996"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SizedBox(
            width: w * 0.02,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: w * 0.02,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Happiness",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily: 'Cairo',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Row(
                      //   children: [
                      //     Icon(
                      //       Icons.location_on,
                      //       color: Colors.red,
                      //       size: w * 0.055,
                      //     ),
                      //     Text(
                      //       "Umm Sequim 3",
                      //       style: TextStyle(
                      //           fontWeight: FontWeight.w400,
                      //           color: Colors.pinkAccent),
                      //     ),
                      //   ],
                      // ),
                    ],
                  ),
                  SizedBox(
                    width: w * 0.3,
                  ),
                  Container(
                    width: w * 0.09,
                    height: h * 0.09,
                    decoration:  BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 3),
                            color: Color(0xffedeef4),
                            spreadRadius: 3,
                            blurRadius: 3)
                      ],
                    ),
                    child: Center(
                      child: InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.favorite,
                          size: w * 0.05,
                          color: Color(0xff3366cc),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              // SizedBox(
              //   height: h * 0.035,
              // ),
              Text('Ahmed Khaled',
                style: TextStyle(
                    color: Colors.red,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.w700,
                    fontSize: 15
                ),
              ),
              Text(
                "1180 L.E",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            width: w * 0.03,
          ),
        ],
      ),
    ),
  );
}
//////////////////////////////////////////////////////////////////


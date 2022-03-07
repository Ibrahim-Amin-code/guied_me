import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:guied_me/screens/splash.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      // theme: ThemeData(
      //     appBarTheme: const AppBarTheme(
      //       systemOverlayStyle: SystemUiOverlayStyle(
      //         statusBarColor: MyColors.backgroundColor,
      //         statusBarIconBrightness: Brightness.dark,
      //         statusBarBrightness: Brightness.dark,
      //       ),
      //     ),
      //     fontFamily: 'Poppins'),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: SplashScreen(),
      ),
    );
  }
}

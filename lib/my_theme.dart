import 'package:flutter/material.dart';



class MyTheme {
  static MaterialColor primaryColor1 = Colors.red;
  static Color red = const Color.fromRGBO(252, 21, 59, 1);//red
  static Color white = const Color.fromRGBO(255, 255, 255, 1);//white
  static Color grey = const Color.fromRGBO(42, 42, 42, 0.1); //grey
  static Color black = const Color.fromRGBO(43, 43, 43, 1); //black
  static Color lightwhite = const Color.fromRGBO(243, 243, 243, 1); //lightwhite



  static TextStyle regularTextStyle(
      {Color? color,
        double? textSize,
        FontWeight? fontWeight,
        double? letterSpacing}) {
    return TextStyle(
      fontFamily: 'Poppins' ,
      color: color ?? Colors.black,
      fontSize: textSize ?? 15,
      fontWeight: fontWeight ?? FontWeight.normal,
      letterSpacing: letterSpacing,
    );

  }
}

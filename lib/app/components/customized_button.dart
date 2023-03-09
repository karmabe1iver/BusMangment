import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../my_theme.dart';

Widget CustomizedButton({onTap,cText,colorText,colorBg,cPadding}){
  return InkWell(
  onTap: onTap,
  //(){
  // Get.offNamed(Routes.LOGIN);
  //},
  child: Padding(
    padding: cPadding?? EdgeInsets.only(bottom: 24.0),
    child: Container(
      width: double.infinity,
    height: Get.height * .07,
    child: Center(
    child: Text( cText,
    //'Get Started',
    style: MyTheme.regularTextStyle(
    color: colorText,
    //MyTheme.red,
    fontWeight: FontWeight.w500,

    textSize: 24),
    ),
    ),
    decoration: BoxDecoration(
    color: colorBg,
    //MyTheme.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
    BoxShadow(
    offset: Offset.zero,
    color: Colors.grey.shade100,
blurStyle: BlurStyle.outer,
blurRadius: 1,
),
],
),
),
  ),
);
}
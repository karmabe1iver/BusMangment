import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../asset_helper.dart';

Widget TitleCard({scale}){
  return  Stack(
alignment: Alignment.center,
children: [
Container(
height:Get.height*.15,
),
Image.asset(AssetHelper.titleCard,scale: scale??1,
),
Positioned(
top:scale==1.5?Get.height*.02: Get.height * .035,
right:scale==1.5?Get.width*.35: Get.width * .28,
child: Image.asset(AssetHelper.titleIcon,scale: scale??1,),
),
],
);
}
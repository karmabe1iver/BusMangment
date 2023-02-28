import 'package:bus_details/uitils/asset_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

 Widget PassengerSeat(){
  return Stack(
    alignment: Alignment.topCenter,
    children: [

      Container(
        height: Get.height*.025,
          width: Get.width*.07,
          child: Image.asset(AssetHelper.union,fit: BoxFit.fitWidth,)),

      Image.asset(AssetHelper.rectanle,scale: 1.3,),
    ],
  );
}
Widget DriverSeat(){
  return Stack(
    alignment: Alignment.topCenter,
    children: [

      Container(
          height: Get.height*.025,
          width: Get.width*.07,
          child: Image.asset(AssetHelper.unionBlck,fit: BoxFit.fitWidth,)),

      Image.asset(AssetHelper.rectanleBlck,scale: 1.3,),
    ],
  );
}
import 'package:bus_details/app/components/customized_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../uitils/asset_helper.dart';
import '../../../../my_theme.dart';
import '../../../routes/app_pages.dart';
import '../controllers/driverlist_controller.dart';

class DriverlistView extends GetView<DriverlistController> {
  const DriverlistView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 18, top: Get.height * .06,right: Get.width*1/5),
            height: Get.height * .15,
            width: double.infinity,
            color: MyTheme.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Get.back();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    size: 28,
                    color: MyTheme.white,
                  ),
                ),
                Text(
                  'Driver List',
                  style: MyTheme.regularTextStyle(
                      color: MyTheme.white,
                      textSize: 22,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0,top: 18.0),
            child: Text('21 Drivers Found',style: MyTheme.regularTextStyle(color: Colors.grey.shade500,textSize: 16,),),
          ),
       Expanded(
          child:ListView.builder(itemBuilder: (context, index) {
           return Padding(
             padding:
             const EdgeInsets.only(left: 18.0, right: 18, bottom: 18),
             child: Container(
               height: Get.height * .1,
               decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(10),
                   color: MyTheme.white),
               child: Row(
                 children: [
                   Container(
                     decoration: BoxDecoration(
                         color: MyTheme.lightwhite,
                         borderRadius: BorderRadius.only(
                             topLeft: Radius.circular(10),
                             bottomLeft: Radius.circular(10))),
                     padding: EdgeInsets.all(12),
                     child: Center(
                       child: Image.asset(AssetHelper.driverDp),
                     ),
                   ),
                   Container(
                     padding: EdgeInsets.only(left: 18),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text(
                           'Rohit Sharma',
                           style: MyTheme.regularTextStyle(
                               textSize: 18,
                               fontWeight: FontWeight.w500,
                               color: MyTheme.black),
                         ),
                         Text(
                           'Lic No:20102293939302',
                           style: MyTheme.regularTextStyle(
                               textSize: 10,
                               fontWeight: FontWeight.w500,
                               color: MyTheme.black),
                         )
                       ],
                     ),
                   ),
                   Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(24.0),
                         child:InkWell(
                           onTap: (){
                             Get.toNamed(Routes.DRIVERLIST);
                           },child: Container(
                           height: Get.height * .05,
                           decoration: BoxDecoration(
                               color: MyTheme.red,
                               borderRadius: BorderRadius.circular(5)),
                           child: Center(

                             child: Text(
                               'Delete',
                               style: MyTheme.regularTextStyle(
                                   color: MyTheme.white,
                                   textSize: 12,
                                   fontWeight: FontWeight.w500),
                             ),
                           ),
                         ),
                         ),
                       ))
                 ],
               ),
             ),
           );
         }), ),
        ],
      ),
      floatingActionButton: CustomizedButton(
        onTap: (){
          Get.toNamed(Routes.ADD_DRIVERS);
        },
          cPadding: EdgeInsets.only(left: 38,right: 12,bottom: 22),
        cText: 'Add Drivers',
        colorText: MyTheme.white,
        colorBg: MyTheme.red
      ),
    );
  }
}

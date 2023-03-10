import 'package:bus_details/app/components/titile.dart';
import 'package:bus_details/app/modules/seatBooking/views/seat_booking_view.dart';
import 'package:bus_details/app/routes/app_pages.dart';
import 'package:bus_details/uitils/asset_helper.dart';
import 'package:bus_details/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/bus_dashboard_controller.dart';

class BusDashboardView extends GetView<BusDashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: Get.height * .06),
            height: Get.height * .15,
            color: MyTheme.black,
            child: TitleCard(scale: 1.5),
          ),
          Container(
            padding: EdgeInsets.only(left:24,right:18,top: 18,bottom: 18),
            height: Get.height * .26,
            child:
                Row(

                  children: [
                    FittedBox(
                      child: InkWell(
                        onTap: (){
                          Get.toNamed(Routes.SEAT_BOOKING);
                        },
                        child: Container(
                          width: Get.width*.4,
                          height: Get.height*.22,
                          padding: EdgeInsets.only(top: 12, left: 12),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: MyTheme.red),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                direction: Axis.vertical,
                                children: [
                                  Text(
                                    'Bus',
                                    style: MyTheme.regularTextStyle(
                                        color: MyTheme.white,
                                        textSize: 22,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    'Manage Your Bus',
                                    style: MyTheme.regularTextStyle(
                                        color: MyTheme.white,
                                        textSize: 10,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              ),

                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Image.asset(
                                      AssetHelper.Ybus,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                   SizedBox(width: 24,),
                    Expanded(
                      child: FittedBox(
                        child: InkWell(
                          onTap: (){
                            Get.toNamed(Routes.DRIVERLIST);
                          },
                          child: Container(
                            width: Get.width*.4,
                            height: Get.height*.217,
                            padding: EdgeInsets.only(top: 12, left: 12,bottom: 1),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: MyTheme.black),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Wrap(
                                  direction: Axis.vertical,
                                  children: [
                                    Text(
                                      'Driver',
                                      style: MyTheme.regularTextStyle(
                                          color: MyTheme.white,
                                          textSize: 22,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Text(
                                      'Manage Your Driver',
                                      style: MyTheme.regularTextStyle(
                                          color: MyTheme.white,
                                          textSize: 10,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),

                                Expanded(
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(right: 6.0),
                                        child: Image.asset(
                                          AssetHelper.driverDp,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

          ),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Text(
              '21 buses Found',
              style: MyTheme.regularTextStyle(
                  color: Colors.grey.shade500, textSize: 12),
            ),
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
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
                          child: Image.asset(AssetHelper.Wbus),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 18),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'KSRTC',
                              style: MyTheme.regularTextStyle(
                                  textSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: MyTheme.black),
                            ),
                            Text(
                              'Swift Scania P-Series',
                              style: MyTheme.regularTextStyle(
                                  textSize: 12,
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
                            Get.to(SeatBookingView2());
                          },child: Container(
                          height: Get.height * .05,
                          decoration: BoxDecoration(
                              color: MyTheme.red,
                              borderRadius: BorderRadius.circular(5)),
                          child: Center(

                              child: Text(
                                'Manage',
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
            }),
          ),
        ],
      ),
    );
  }
}

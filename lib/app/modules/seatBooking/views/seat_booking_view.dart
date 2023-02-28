import 'package:bus_details/app/components/seat.dart';
import 'package:bus_details/app/components/seat_manage.dart';
import 'package:bus_details/uitils/asset_helper.dart';
import 'package:bus_details/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/seat_booking_controller.dart';

class SeatBookingView extends GetView<SeatBookingController> {
  const SeatBookingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(18),
            height: Get.height * .15,
            width: double.infinity,
            color: MyTheme.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              //direction: Axis.horizontal,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back,
                    color: MyTheme.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'KSRTC Swift Scania P-Series',
                    style: MyTheme.regularTextStyle(color: MyTheme.white),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(28.0),
            child: Container(
              height: Get.height * .15,
              decoration: BoxDecoration(
                color: MyTheme.black,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    offset: Offset.zero,
                    color: Colors.grey.shade500,
                    blurStyle: BlurStyle.outer,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rohit Sharma',
                          style: MyTheme.regularTextStyle(
                              color: MyTheme.white,
                              textSize: 28,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'License no :201202939399390',
                          style: MyTheme.regularTextStyle(
                              color: MyTheme.white,
                              textSize: 10,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  FittedBox(
                      child: Image.asset(
                    AssetHelper.driverDp,
                    fit: BoxFit.fill,
                  )),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 85.0),
            child: Container(
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: MyTheme.grey)),
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 32.0, right: 32.0),
                          child: DriverSeat(),
                        ),
                      ],
                    ),
                    Expanded(child: BusLayout.oneistothreeLayout()),
                  ],
                )),
          ))
        ],
      ),
    );
  }
}

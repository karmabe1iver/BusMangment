import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../my_theme.dart';
import '../../../components/customized_button.dart';
import '../../../routes/app_pages.dart';
import '../controllers/add_drivers_controller.dart';

class AddDriversView extends GetView<AddDriversController> {
  const AddDriversView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(children: [
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
                'Add Drivers',
                style: MyTheme.regularTextStyle(
                    color: MyTheme.white,
                    textSize: 22,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(),
            ],
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(
                left: Get.width * .04, right: Get.width * .04, top: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Wrap(
                  runSpacing: 24,
                  children: [
                    Container(
                      height: Get.height * .08,
                      padding: EdgeInsets.only(
                        left: Get.width * .30,
                        right: Get.width * .30,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Name',
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: Get.height * .08,
                      padding: EdgeInsets.only(
                          left: Get.width * .30, right: Get.width * .30),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey.shade300,
                      ),
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter Lic No',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                CustomizedButton(
                    colorText: MyTheme.white,
                    cText: 'Save',
                    colorBg: MyTheme.red,
                    onTap: () {
                      Get.offNamed(Routes.BUS_DASHBOARD);
                    }),
              ],
            ),
          ),
        ),
      ],)
    );
  }
}

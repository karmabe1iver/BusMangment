import 'package:bus_details/app/components/customized_button.dart';
import 'package:bus_details/app/routes/app_pages.dart';
import 'package:bus_details/uitils/asset_helper.dart';
import 'package:bus_details/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: Get.height * .32,
                width: double.infinity,
                decoration: BoxDecoration(color: MyTheme.black),
                child: FittedBox(child: Image.asset(AssetHelper.redPolygon)),
              ),
              Positioned(
                left: 35,
                top: Get.height * .15,
                child: Wrap(
                  direction: Axis.vertical,
                  children: [
                    Text(
                      'Welcome',
                      style: MyTheme.regularTextStyle(
                        color: MyTheme.white,
                        fontWeight: FontWeight.w600,
                        textSize: 38,
                      ),
                    ),
                    Text(
                      'Manage Your Bus and Drivers',
                      style: MyTheme.regularTextStyle(
                        color: MyTheme.white,
                        fontWeight: FontWeight.w400,
                        textSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
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
                              hintText: 'Enter username',
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
                              hintText: 'Enter Password',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  CustomizedButton(
                      colorText: MyTheme.white,
                      cText: 'Login',
                      colorBg: MyTheme.red,
                      onTap: () {
                        Get.offNamed(Routes.BUS_DASHBOARD);
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

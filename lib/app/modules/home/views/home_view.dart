import 'package:bus_details/app/components/customized_button.dart';
import 'package:bus_details/app/components/titile.dart';
import 'package:bus_details/app/routes/app_pages.dart';
import 'package:bus_details/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: MyTheme.primaryColor1,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: Get.height * .1,
              ),
              Container(
                child: TitleCard(),
              ),
              CustomizedButton(
                  onTap: () {
                    Get.offNamed(Routes.LOGIN);
                  },
                  colorText: MyTheme.red,
                  colorBg: MyTheme.white,
                  cPadding: EdgeInsets.all(24.0),
                  cText: 'Get Started')
            ],
          ),
        ),
      ),
    );
  }
}

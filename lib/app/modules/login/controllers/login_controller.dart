import 'package:bus_details/app/data/model/login_respon.dart';
import 'package:bus_details/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/model/api_respon.dart';
import '../../../data/services/login_serivces.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  RxBool isLoggingProgress = false.obs;
  void checkLogin() async {
    final String emaill = emailController.text;
    final String pswdd = passwordController.text;
    Future.delayed(Duration(seconds: 5));
    final login resp = await LoginServices.fetchUser(emaill, pswdd);
    if (resp.status = true) {
      //MyUtils.msg(resp.msgs);
      Get.offNamed(Routes.BUS_DASHBOARD);
      isLoggingProgress.value = false;
      return;
    }
     else{
       Get.offNamed(Routes.BUS_DASHBOARD);
    }

  }

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}

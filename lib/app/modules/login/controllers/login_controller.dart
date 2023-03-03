

import 'package:bus_details/app.dart';
import 'package:bus_details/app/data/model/login_respon.dart';
import 'package:bus_details/app/data/presets/api_paths.dart';
import 'package:bus_details/app/routes/app_pages.dart';
import 'package:bus_details/my_theme.dart';
import 'package:bus_details/uitils/mydio.dart';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  RxBool isLoggingProgress = false.obs;

  void checkLogin() async {
    final String emaill = emailController.text;
    final String pswdd = passwordController.text;
    Future.delayed(Duration(milliseconds: 100));

    var response = await Dio().post(
      ApiPaths.baseUrl + ApiPaths.login,
      data: {'username': emaill, 'password': pswdd},
    );
    MyDio().DebugPrint(response: response);

    LoginResp loginResp = LoginResp.fromJson(response.data);
    App.token= loginResp.refresh??'';
    App.Url_id=loginResp.urlId??'';
    print('url= ${loginResp.urlId}');
    if (loginResp.status == true) {
      Get.offNamed(Routes.BUS_DASHBOARD);
    }
    else {
      Get.snackbar('Login failed', 'Please check Login',
          colorText: MyTheme.white,
          duration: Duration(seconds: 2),
          backgroundColor: MyTheme.black);
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
}

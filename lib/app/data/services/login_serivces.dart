import 'dart:developer';

import 'package:bus_details/app/data/model/login_respon.dart';
import 'package:dio/dio.dart';

import '../../../uitils/err_m.dart';
import '../../../uitils/mydio.dart';
import '../presets/api_paths.dart';

abstract class LoginServices {
  static Future fetchUser(String userId, String pswd) async {
    dynamic resp;
    await errMAsync(
          () async {
        resp = await MyDio().customPost(
          ApiPaths.login,
          data: {'username':userId, 'password':pswd},
        );
      },
      title: 'Login Failed',
    );

    if (resp is DioError) {
      if (resp.response?.statusCode == 400) {
        log('400 >> ${resp.response}');
        showMsg("Invalid UserName or Password", "Login Failed");
      }
      if (resp.type == DioErrorType.connectionTimeout) {
        showMsg(
            'Connection timed-out. Check internet connection.', "Login Failed");
      }
      if (resp.type == DioErrorType.receiveTimeout) {
        showMsg('Unable to connect to the server', "Login Failed");
      }
      if (resp.type == DioErrorType.unknown) {
        showMsg(
            'Something went wrong with server communication', "Login Failed");
      }else {
        resp != null;
        login(
          status: true,

        );
      }
    }
  }
}
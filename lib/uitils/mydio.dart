import 'dart:developer';
import 'package:flutter/cupertino.dart';

class MyDio{
   DebugPrint({response}) {
    debugPrint("!!!!!!!!!!!!!! Request Begin !!!!!!!!!!!!!!!!!!!!!");
    debugPrint(
        "REQUEST[${response.statusCode}] => PATH: ${response.requestOptions
            .path}");
    debugPrint("ResMethodType : [${response.requestOptions.method}]");
    response.requestOptions.headers.forEach((k, v) => debugPrint('$k: $v'));

    debugPrint("QueryParameters:");
    response.requestOptions.queryParameters
        .forEach((k, v) => debugPrint('$k: $v'));
    debugPrint(response.requestOptions.queryParameters.toString());

    if (response.requestOptions.data != null) {

      debugPrint("Body: ${response.requestOptions.data}");
    }
    log('resp >>>${response.data}');
    debugPrint("************** Response End ************************");
  }
  }
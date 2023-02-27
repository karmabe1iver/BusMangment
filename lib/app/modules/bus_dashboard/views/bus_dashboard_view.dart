import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bus_dashboard_controller.dart';

class BusDashboardView extends GetView<BusDashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BusDashboardView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'BusDashboardView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

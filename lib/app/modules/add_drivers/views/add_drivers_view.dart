import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_drivers_controller.dart';

class AddDriversView extends GetView<AddDriversController> {
  const AddDriversView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddDriversView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddDriversView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

import 'package:get/get.dart';

import '../controllers/add_drivers_controller.dart';

class AddDriversBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AddDriversController>(
      () => AddDriversController(),
    );
  }
}

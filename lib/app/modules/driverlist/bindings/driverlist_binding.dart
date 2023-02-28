import 'package:get/get.dart';

import '../controllers/driverlist_controller.dart';

class DriverlistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DriverlistController>(
      () => DriverlistController(),
    );
  }
}

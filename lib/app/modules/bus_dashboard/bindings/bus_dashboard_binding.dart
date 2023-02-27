import 'package:get/get.dart';

import '../controllers/bus_dashboard_controller.dart';

class BusDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BusDashboardController>(
      () => BusDashboardController(),
    );
  }
}

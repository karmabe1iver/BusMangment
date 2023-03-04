import 'package:get/get.dart';

import '../modules/add_drivers/bindings/add_drivers_binding.dart';
import '../modules/add_drivers/views/add_drivers_view.dart';
import '../modules/bus_dashboard/bindings/bus_dashboard_binding.dart';
import '../modules/bus_dashboard/views/bus_dashboard_view.dart';
import '../modules/driverlist/bindings/driverlist_binding.dart';
import '../modules/driverlist/views/driverlist_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/seatBooking/bindings/seat_booking_binding.dart';
import '../modules/seatBooking/views/seat_booking_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BUS_DASHBOARD;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BUS_DASHBOARD,
      page: () => BusDashboardView(),
      binding: BusDashboardBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SEAT_BOOKING,
      page: () => const SeatBookingView(),
      binding: SeatBookingBinding(),
    ),
    GetPage(
      name: _Paths.DRIVERLIST,
      page: () => const DriverlistView(),
      binding: DriverlistBinding(),
    ),
    GetPage(
      name: _Paths.ADD_DRIVERS,
      page: () => const AddDriversView(),
      binding: AddDriversBinding(),
    ),
  ];
}

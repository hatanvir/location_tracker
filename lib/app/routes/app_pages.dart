import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/user_a/bindings/user_a_binding.dart';
import '../modules/user_a/views/user_a_view.dart';
import '../modules/user_b/bindings/user_b_binding.dart';
import '../modules/user_b/views/user_b_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_A,
      page: () => const UserAView(),
      binding: UserABinding(),
    ),
    GetPage(
      name: _Paths.USER_B,
      page: () => const UserBView(),
      binding: UserBBinding(),
    ),
  ];
}

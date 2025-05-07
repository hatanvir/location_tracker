import 'package:get/get.dart';

import '../controllers/home_controller.dart';

//home screen controller bindings
class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeController());
  }
}

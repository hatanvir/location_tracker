import 'package:get/get.dart';

import '../controllers/user_a_controller.dart';

class UserABinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserAController());
  }
}

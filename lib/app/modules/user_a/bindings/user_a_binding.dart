import 'package:get/get.dart';

import '../controllers/user_a_controller.dart';

///user screen controller bindings
class UserABinding extends Bindings {
  @override
  void dependencies() {
    Get.put(UserAController());
  }
}

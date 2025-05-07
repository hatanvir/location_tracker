import 'package:get/get.dart';

import '../controllers/user_b_controller.dart';

///user b screen bindings
class UserBBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserBController>(
      () => UserBController(), fenix: true
    );
  }
}

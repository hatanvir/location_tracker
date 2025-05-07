import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/common_appbar.dart';
import '../controllers/user_b_controller.dart';

class UserBView extends GetView<UserBController> {
  const UserBView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        title: 'User B',
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Location Data of User A \n(${controller.locationData})',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

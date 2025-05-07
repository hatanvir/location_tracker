import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../core/widgets/common_appbar.dart';
import '../controllers/user_a_controller.dart';

class UserAView extends GetView<UserAController> {
  const UserAView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(
        title: 'User A',
      ),
      body: Center(
        child: Obx(
          () => Text(
            'Sending your location to User B\n(${controller.currentLocation.value})',
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

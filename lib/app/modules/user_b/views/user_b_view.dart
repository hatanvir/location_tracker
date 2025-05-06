import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_b_controller.dart';

class UserBView extends GetView<UserBController> {
  const UserBView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User B'),
        centerTitle: true,
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

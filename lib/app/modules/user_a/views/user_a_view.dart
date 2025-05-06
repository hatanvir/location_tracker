import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/user_a_controller.dart';

class UserAView extends GetView<UserAController> {
  const UserAView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User A'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Sending your location to User B',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

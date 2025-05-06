import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:location_tracker/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _customButton(
                text: 'Enter as User A',
                onPress: () {
                  Get.toNamed(Routes.USER_A);
                }),
            _customButton(
                text: 'Enter as User B',
                onPress: () {
                  Get.toNamed(Routes.USER_B);
                })
          ],
        ),
      ),
    );
  }

  Widget _customButton({required String text, required Function() onPress}) =>
      ElevatedButton(
          onPressed: onPress, child: Text(text));
}

import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

///home screen controller
class HomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkAndRequestLocationPermission();
  }

  ///location runtime permission
  Future<void> checkAndRequestLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        closeApp();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      closeApp();
    }
  }

  void closeApp() {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}


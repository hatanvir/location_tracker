import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:location_tracker/app/data/repository/connection_repo.dart';

///user a screen controller
class UserAController extends GetxController {
  final ConnectionRepo _connectionRepo = Get.find();
  StreamSubscription? _geoListener;
  var currentLocation = 'empty'.obs;

  @override
  void onInit() {
    super.onInit();
    sendLatLon();
  }

  ///on close to close all listeners and hub connection
  @override
  void onClose() {
    _connectionRepo.stop();
    _geoListener?.cancel();
    super.onClose();
  }

  ///lat lon invoke operation
  void sendLatLon() {
    _geoListener = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    ).listen((Position position) {
      final lat = position.latitude;
      final lon = position.longitude;
      currentLocation.value = 'lat: $lat, lon: $lon';
      _connectionRepo.sendLotLon(lat, lon);
    });
  }
}

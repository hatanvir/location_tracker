import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:location_tracker/app/data/repository/connection_repo.dart';
import 'package:location_tracker/app/network/apis.dart';
import 'package:signalr_netcore/hub_connection.dart';
import 'package:signalr_netcore/hub_connection_builder.dart';

class UserAController extends GetxController {
  final ConnectionRepo _connectionRepo = Get.find();
  StreamSubscription? geoListener;
  @override
  void onInit() {
    super.onInit();
    sendLatLon();
  }

  @override
  void onClose() {
    _connectionRepo.dispose();
    geoListener?.cancel();
    super.onClose();
  }

  void sendLatLon() {
    geoListener = Geolocator.getPositionStream(
      locationSettings: const LocationSettings(accuracy: LocationAccuracy.high),
    ).listen((Position position) {
      final lat = position.latitude;
      final lon = position.longitude;
      _connectionRepo.sendLotLon(lat, lon);
    });
  }
}

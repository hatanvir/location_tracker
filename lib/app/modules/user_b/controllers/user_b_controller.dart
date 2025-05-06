
import 'package:get/get.dart';
import 'package:location_tracker/app/data/repository/connection_repo.dart';

class UserBController extends GetxController {
  final ConnectionRepo _connectionRepo = ConnectionRepo();
  var locationData = 'empty'.obs;

  @override
  void onInit() {
    super.onInit();
    getLatLon();
  }

  @override
  void onClose() {
    super.onClose();
    _connectionRepo.dispose();
  }

  void getLatLon() {
    _connectionRepo.getLatLon((value) {
      print(value);
      locationData.value = value.replaceAll("{", "").replaceAll("}", "");
    });
  }
}

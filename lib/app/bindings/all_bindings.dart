import 'package:get/get.dart';
import 'package:location_tracker/app/data/repository/connection_repo.dart';

//binding all instance here
class AllBindings extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<ConnectionRepo>(
          () => ConnectionRepo(), fenix: true
    );
  }

}
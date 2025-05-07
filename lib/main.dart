import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:location_tracker/app/bindings/all_bindings.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Location Tracker",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: AllBindings(),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ServiceViewController extends GetxController {
  RxBool isApp = false.obs, isGraphic = false.obs, isDataAnalyst = false.obs;

  final onHoverActive = Matrix4.identity()..scale(1.0);
  //final onHoverRemove = Matrix4.identity()..scale(0.0);
  Rx<int?> socialBI = (-1).obs;
}

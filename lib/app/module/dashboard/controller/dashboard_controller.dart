import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardController extends GetxController {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  get ScaffoldKey => scaffoldKey;

  void controlMenu() {
    if (!scaffoldKey.currentState.isDrawerOpen) {
      scaffoldKey.currentState.openDrawer();
    }
  }
}

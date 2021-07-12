import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllersScreen extends GetxController {
  String titleBar = "Publicaões Atuais";
  String obg = "Bilhete";
  double value = 0;

  TextStyle? drawetitles =
      TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white);

  TextStyle textStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  void des() {
    Text(
      obg,
      style: textStyle,
    );
  }

  void updateDrawer() {
    value = 1;
    update();
  }

  void updatDrawerZero() {
    value = 0;
    update();
  }

  @override
  void onInit() {
    des();
    super.onInit();
  }
}

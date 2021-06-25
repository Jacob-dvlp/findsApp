import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ControllersScreen extends GetxController {
  String titleBar = "Publicaões Atuais";
  String obg = "Bilhete";

  TextStyle textStyle =
      TextStyle(color: Colors.black, fontWeight: FontWeight.bold);

  void des() {
    Text(
      obg,
      style: textStyle,
    );
  }

  @override
  void onInit() {
    des();
    super.onInit();
  }
}

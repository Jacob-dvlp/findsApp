import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  bool password = false;
  final key = new GlobalKey<FormState>();
  
  TextEditingController  email = new TextEditingController();
  TextEditingController passwordEditing = new TextEditingController();

  void vispssword() {
    password = !password;
    update();
  }


}

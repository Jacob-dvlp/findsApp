import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mobile/repositorys/user_authentic.dart';

class ControllerLogin extends GetxController {
  bool password = false;
  final key = new GlobalKey<FormState>();
  TextEditingController  email = new TextEditingController();
  TextEditingController passwordEditing = new TextEditingController();
  final AuthenticnUser  userLogin = AuthenticnUser();


  void vispssword() {
    password = !password;
    update();
  }


}

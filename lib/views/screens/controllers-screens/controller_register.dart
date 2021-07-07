import 'package:get/get.dart';

class ControllerRegister extends GetxController {
  bool password = false;

  void vispssword() {
    password = !password;
    update();
  }
}

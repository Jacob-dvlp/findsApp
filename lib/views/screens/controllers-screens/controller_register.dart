import 'package:get/get.dart';
import 'package:mobile/repositorys/user_authentic.dart';

class ControllerRegister extends GetxController {
  bool password = false;
  final AuthenticnUser userRegister = AuthenticnUser();

  void vispssword() {
    password = !password;
    update();
  }
}

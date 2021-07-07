import 'package:get/get.dart';

class ControllerSplash extends GetxController {
  @override
  void onInit() {
    Future.delayed(
      Duration(seconds: 7),
      () => Get.offNamed("/login"),
    );
    super.onInit();
  }
}

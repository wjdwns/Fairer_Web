import 'package:fairerweb/controller/global_controller.dart';
import 'package:get/get.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(GlobalController(),permanent: true);
  }
}

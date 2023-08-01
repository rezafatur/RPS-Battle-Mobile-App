import 'package:get/get.dart';
import 'package:rps_battle/app/modules/information/controllers/information_controller.dart';

class InformationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InformationController>(
      () => InformationController(),
    );
  }
}

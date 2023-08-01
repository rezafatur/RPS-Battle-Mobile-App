import 'package:get/get.dart';
import 'package:rps_battle/app/modules/vsComputer/controllers/vs_computer_controller.dart';

class VsComputerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VsComputerController>(
      () => VsComputerController(),
    );
  }
}

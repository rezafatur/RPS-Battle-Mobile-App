import 'package:get/get.dart';
import '../controllers/vs_computer_controller.dart';

class VsComputerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VsComputerController>(
      () => VsComputerController(),
    );
  }
}

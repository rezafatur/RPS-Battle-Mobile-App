import 'package:get/get.dart';
import '../controllers/choose_opponent_controller.dart';

class ChooseOpponentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseOpponentController>(
      () => ChooseOpponentController(),
    );
  }
}

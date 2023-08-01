import 'package:get/get.dart';
import 'package:rps_battle/app/modules/chooseOpponent/controllers/choose_opponent_controller.dart';

class ChooseOpponentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseOpponentController>(
      () => ChooseOpponentController(),
    );
  }
}

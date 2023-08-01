import 'package:get/get.dart';
import 'package:rps_battle/app/modules/vsFriend/controllers/vs_friend_controller.dart';

class VsFriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VsFriendController>(
      () => VsFriendController(),
    );
  }
}

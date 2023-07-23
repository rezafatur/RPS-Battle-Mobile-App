import 'package:get/get.dart';
import '../controllers/vs_friend_controller.dart';

class VsFriendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VsFriendController>(
      () => VsFriendController(),
    );
  }
}

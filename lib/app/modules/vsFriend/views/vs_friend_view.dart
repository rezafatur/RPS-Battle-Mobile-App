import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/vsFriend/widgets/vs_friend_player1.dart';
import 'package:rps_battle/app/modules/vsFriend/widgets/vs_friend_player2.dart';
import 'package:rps_battle/app/modules/vsFriend/widgets/vs_friend_result.dart';
import '../../../../core/utils/size_config.dart';
import '../controllers/vs_friend_controller.dart';

class VsFriendView extends GetView<VsFriendController> {
  const VsFriendView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initializing the screen width and height
    SizeConfig().init(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Section - Background
          Image.asset(
            'assets/images/homebg.png',
            fit: BoxFit.cover,
          ),

          // Section - Main
          Obx(
            () => controller.isReadyPlayer2.value
                ? ResultScreen(controller: controller)
                : controller.isReadyPlayer1.value
                    ? GameScreenPlayer2(controller: controller)
                    : GameScreenPlayer1(controller: controller),
          ),
        ],
      ),
    );
  }
}

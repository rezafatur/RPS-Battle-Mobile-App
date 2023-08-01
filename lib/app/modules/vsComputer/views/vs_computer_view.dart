import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/vsComputer/controllers/vs_computer_controller.dart';
import 'package:rps_battle/app/modules/vsComputer/widgets/vs_computer_game.dart';
import 'package:rps_battle/app/modules/vsComputer/widgets/vs_computer_result.dart';
import 'package:rps_battle/core/utils/size_config.dart';

class VsComputerView extends GetView<VsComputerController> {
  const VsComputerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initializing the screen width and height
    SizeConfig().init(context);

    Get.put(
      VsComputerController(),
    );

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
            () => controller.isReady.value
                ? ResultScreen(controller: controller)
                : GameScreen(controller: controller),
          ),
        ],
      ),
    );
  }
}

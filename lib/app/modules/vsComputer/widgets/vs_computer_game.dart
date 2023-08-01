import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/vsComputer/controllers/vs_computer_controller.dart';
import 'package:rps_battle/app/routes/app_pages.dart';
import 'package:rps_battle/core/theme/colors.dart';
import 'package:rps_battle/core/theme/text_theme.dart';
import 'package:rps_battle/core/utils/size_config.dart';

class GameScreen extends StatelessWidget {
  const GameScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final VsComputerController controller;

  // Show confirmation dialog
  void showConfirmation(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),
          child: AlertDialog(
            backgroundColor: caribbeanGreen,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Section - Are you sure ?
                Text(
                  "Are you sure?",
                  style: textVerySmallBoldSmokyBlack,
                ),
                const SizedBox(
                  height: 20,
                ),

                // Section - Yes and No button
                Row(
                  children: [
                    // Section - No button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          controller.isReady.value = false;
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: smokyBlack,
                        ),
                        child: Text(
                          "No",
                          style: textVerySmallBoldWhite,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),

                    // Section - Yes button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          controller.setComputerChoice();
                          controller.isReady.value = true;
                          Navigator.of(context).pop();
                        },
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: smokyBlack,
                        ),
                        child: Text(
                          "Yes",
                          style: textVerySmallBoldWhite,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Initializing the screen width and height
    SizeConfig().init(context);

    return Stack(
      children: [
        // Section - App Bar
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            centerTitle: true,
            leading: IconButton(
              onPressed: () {
                Get.offAllNamed(
                  Routes.CHOOSE_OPPONENT,
                );
              },
              icon: Image.asset(
                'assets/icons/back.png',
                height: SizeConfig.blockV! * 3.5,
              ),
            ),
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "VS ",
                    style: textVerySmallBoldWhite,
                  ),
                  TextSpan(
                    text: "Computer",
                    style: textVerySmallBoldCarGreen,
                  ),
                ],
              ),
            ),
          ),
        ),

        // Section - User and Main
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Section - User, and You turn
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 20,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Section - User
                  Image.asset(
                    'assets/icons/user.png',
                    height: SizeConfig.blockV! * 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Section - You turn
                  Column(
                    children: [
                      // Section - You
                      Text(
                        "You",
                        style: textLargeBoldWhite,
                      ),

                      // Section - Turn
                      Text(
                        "Turn",
                        style: textVerySmall300White,
                      ),
                    ],
                  ),
                ],
              ),
            ),

            // Section - Main
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Section - Image and Text (Rock, Paper, or Scissors)
                  Obx(
                    () => Center(
                      child: Column(
                        children: [
                          // Section - Image
                          Image.asset(
                            getImageAssets(controller.userChoice.value),
                            height: SizeConfig.blockV! * 20,
                          ),

                          // Section - Text
                          Text(
                            getChoiceText(controller.userChoice.value),
                            style: textLargeBoldWhite,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Section - Rock, Paper, or Scissors button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Section - Rock button
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.setUserChoice(Choice.rock);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: caribbeanGreen,
                          ),
                          child: Text(
                            "R",
                            style: textVerySmallBoldSmokyBlack,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),

                      // Section - Paper button
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.setUserChoice(Choice.paper);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: caribbeanGreen,
                          ),
                          child: Text(
                            "P",
                            style: textVerySmallBoldSmokyBlack,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),

                      // Section - Scissors button
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            controller.setUserChoice(Choice.scissors);
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: caribbeanGreen,
                          ),
                          child: Text(
                            "S",
                            style: textVerySmallBoldSmokyBlack,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  // Section - Ready button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        showConfirmation(context);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: caribbeanGreen,
                      ),
                      child: Text(
                        "Ready",
                        style: textVerySmallBoldSmokyBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Helper functions to get image assets
  String getImageAssets(Choice choice) {
    switch (choice) {
      case Choice.rock:
        return "assets/icons/rock.png";
      case Choice.paper:
        return "assets/icons/paper.png";
      case Choice.scissors:
        return "assets/icons/scissors.png";
      default:
        return "assets/icons/rock.png";
    }
  }

  // Helper functions to get choice text
  String getChoiceText(Choice choice) {
    switch (choice) {
      case Choice.rock:
        return "Rock";
      case Choice.paper:
        return "Paper";
      case Choice.scissors:
        return "Scissors";
      default:
        return '';
    }
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/theme/colors.dart';
import '../../../../core/theme/text_theme.dart';
import '../../../../core/utils/size_config.dart';
import '../../../routes/app_pages.dart';
import '../controllers/vs_computer_controller.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final VsComputerController controller;

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
                  Routes.HOME,
                );
              },
              icon: Image.asset(
                'assets/icons/home.png',
                height: SizeConfig.blockV! * 3.5,
              ),
            ),
            title: Text(
              "Result",
              style: textVerySmallBoldWhite,
            ),
          ),
        ),

        // Section - Result
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 50,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Section - Choice of the user and the computer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Section - Choice from the user
                  Expanded(
                    child: Column(
                      children: [
                        // Section - Image
                        Image.asset(
                          getImageAssets(controller.userChoice.value),
                          height: SizeConfig.blockV! * 10,
                        ),

                        // Section - Text
                        Text(
                          getChoiceText(controller.userChoice.value),
                          style: textSmallBoldWhite,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Section - You
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: caribbeanGreen,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "You",
                                style: textVerySmallBoldSmokyBlack,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  // Section - Choice from the computer
                  Expanded(
                    child: Column(
                      children: [
                        // Section - Image
                        Image.asset(
                          getImageAssets(controller.computerChoice.value),
                          height: SizeConfig.blockV! * 10,
                        ),

                        // Section - Text
                        Text(
                          getChoiceText(controller.computerChoice.value),
                          style: textSmallBoldWhite,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Section - You
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: caribbeanGreen,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Computer",
                                style: textVerySmallBoldSmokyBlack,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              // Section - Win, Tied, or Lose
              controller.getResult() == "win"
                  ? Column(
                      children: [
                        // Section - Win
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "🥳🥳🥳\n",
                                style: textSmallBoldWhite,
                              ),
                              TextSpan(
                                text: "Congratulation\n",
                                style: textSmallBoldWhite,
                              ),
                              TextSpan(
                                text: "to",
                                style: textVerySmall300White,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // Section - User image
                        Image.asset(
                          'assets/icons/user.png',
                          height: SizeConfig.blockV! * 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // Section - You winner
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "You\n",
                                style: textSmallBoldWhite,
                              ),
                              TextSpan(
                                text: "Winner",
                                style: textVerySmall300White,
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : controller.getResult() == "draw"
                      ? Column(
                          children: [
                            // Section - Draw
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "🤝🤝🤝\n",
                                    style: textSmallBoldWhite,
                                  ),
                                  TextSpan(
                                    text: "Same result\n",
                                    style: textSmallBoldWhite,
                                  ),
                                  TextSpan(
                                    text: "for both of",
                                    style: textVerySmall300White,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Section - User image
                            Image.asset(
                              'assets/icons/user.png',
                              height: SizeConfig.blockV! * 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Section - You & Computer draw
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "You & Computer\n",
                                    style: textSmallBoldWhite,
                                  ),
                                  TextSpan(
                                    text: "Draw",
                                    style: textVerySmall300White,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            // Section - Lose
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "😥😥😥\n",
                                    style: textSmallBoldWhite,
                                  ),
                                  TextSpan(
                                    text: "Bad result\n",
                                    style: textSmallBoldWhite,
                                  ),
                                  TextSpan(
                                    text: "for",
                                    style: textVerySmall300White,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Section - User image
                            Image.asset(
                              'assets/icons/user.png',
                              height: SizeConfig.blockV! * 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Section - You lose
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "You\n",
                                    style: textSmallBoldWhite,
                                  ),
                                  TextSpan(
                                    text: "Lose",
                                    style: textVerySmall300White,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
              const SizedBox(
                height: 20,
              ),

              // Section - Try again and back to home button
              Row(
                children: [
                  // Section - Try again button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        controller.isReady.value = false;
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: caribbeanGreen,
                      ),
                      child: Text(
                        "Try Again",
                        style: textVerySmallBoldSmokyBlack,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),

                  // Section - Back to home button
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        Get.offAllNamed(
                          Routes.HOME,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        padding: const EdgeInsets.all(20),
                        backgroundColor: caribbeanGreen,
                      ),
                      child: Text(
                        "Home",
                        style: textVerySmallBoldSmokyBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
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

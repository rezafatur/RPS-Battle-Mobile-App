import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/vsFriend/controllers/vs_friend_controller.dart';
import 'package:rps_battle/app/routes/app_pages.dart';
import 'package:rps_battle/core/theme/colors.dart';
import 'package:rps_battle/core/theme/text_theme.dart';
import 'package:rps_battle/core/utils/size_config.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final VsFriendController controller;

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
              // Section - Choice of the player 1 and the player 2
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Section - Choice from the player 1
                  Expanded(
                    child: Column(
                      children: [
                        // Section - Image
                        Image.asset(
                          getImageAssets(controller.player1Choice.value),
                          height: SizeConfig.blockV! * 10,
                        ),

                        // Section - Text
                        Text(
                          getChoiceText(controller.player1Choice.value),
                          style: textSmallBoldWhite,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Section - Player 1
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: caribbeanGreen,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Player 1",
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

                  // Section - Choice from the player 2
                  Expanded(
                    child: Column(
                      children: [
                        // Section - Image
                        Image.asset(
                          getImageAssets(controller.player2Choice.value),
                          height: SizeConfig.blockV! * 10,
                        ),

                        // Section - Text
                        Text(
                          getChoiceText(controller.player2Choice.value),
                          style: textSmallBoldWhite,
                        ),
                        const SizedBox(
                          height: 10,
                        ),

                        // Section - Player 2
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: caribbeanGreen,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Center(
                              child: Text(
                                "Player 2",
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
              controller.getResult() == "Player 1 win"
                  ? Column(
                      children: [
                        // Section - Player 1 win
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

                        // Section - Profile image
                        Image.asset(
                          'assets/icons/user.png',
                          height: SizeConfig.blockV! * 20,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // Section - Player 1 winner
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Player 1\n",
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

                            // Section - Profile image
                            Image.asset(
                              'assets/icons/user.png',
                              height: SizeConfig.blockV! * 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Section - Player 1 & Player 2 draw
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Player 1 & Player 2\n",
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
                            // Section - Player 2 win
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

                            // Section - Profile image
                            Image.asset(
                              'assets/icons/user.png',
                              height: SizeConfig.blockV! * 20,
                            ),
                            const SizedBox(
                              height: 20,
                            ),

                            // Section - Player 2 winner
                            RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Player 2\n",
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
                        controller.isReadyPlayer1.value = false;
                        controller.isReadyPlayer2.value = false;
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

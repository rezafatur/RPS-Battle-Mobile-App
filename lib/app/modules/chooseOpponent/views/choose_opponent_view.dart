import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/chooseOpponent/controllers/choose_opponent_controller.dart';
import 'package:rps_battle/app/modules/vsComputer/views/vs_computer_view.dart';
import 'package:rps_battle/app/modules/vsFriend/views/vs_friend_view.dart';
import 'package:rps_battle/app/routes/app_pages.dart';
import 'package:rps_battle/core/theme/colors.dart';
import 'package:rps_battle/core/theme/text_theme.dart';
import 'package:rps_battle/core/utils/size_config.dart';

class ChooseOpponentView extends GetView<ChooseOpponentController> {
  const ChooseOpponentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Initializing the screen width and height
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: smokyBlack,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Section - Background
          Image.asset(
            'assets/images/homebg.png',
            fit: BoxFit.cover,
          ),

          // Section - App Bar
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
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
                  'assets/icons/back.png',
                  height: SizeConfig.blockV! * 3.5,
                ),
              ),
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "RPS ",
                      style: textVerySmallBoldWhite,
                    ),
                    TextSpan(
                      text: "Battle",
                      style: textVerySmallBoldCarGreen,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Section - Main
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 20,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Section - User
                Image.asset(
                  'assets/icons/user.png',
                  height: SizeConfig.blockV! * 25,
                ),
                const SizedBox(
                  height: 20,
                ),

                // Section - You, Choose an Opponent, and VS
                Column(
                  children: [
                    // Section - You
                    Text(
                      "You",
                      style: textLargeBoldWhite,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Section - Choose an Opponent
                    Text(
                      "Choose an Opponent",
                      style: textSmallBoldCarGreen,
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    // Section - VS
                    Text(
                      "VS",
                      style: textVerySmall300White,
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Section - Friend and Computer button
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 100,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Section - Friend button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                            () => const VsFriendView(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: caribbeanGreen,
                        ),
                        child: Text(
                          "Friend",
                          style: textVerySmallBoldSmokyBlack,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Section - or
                    Text(
                      "or",
                      style: textVerySmall300White,
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Section - Computer button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                            () => const VsComputerView(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.all(20),
                          backgroundColor: caribbeanGreen,
                        ),
                        child: Text(
                          "Computer",
                          style: textVerySmallBoldSmokyBlack,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

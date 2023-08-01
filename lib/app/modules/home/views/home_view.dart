import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/chooseOpponent/views/choose_opponent_view.dart';
import 'package:rps_battle/app/modules/home/controllers/home_controller.dart';
import 'package:rps_battle/app/modules/information/views/information_view.dart';
import 'package:rps_battle/core/theme/colors.dart';
import 'package:rps_battle/core/theme/text_theme.dart';
import 'package:rps_battle/core/utils/size_config.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

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
              title: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "RPS ",
                      style: textVerySmallBoldCarGreen,
                    ),
                    TextSpan(
                      text: "Battle",
                      style: textVerySmallBoldWhite,
                    ),
                  ],
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    Get.to(
                      () => const InformationView(),
                    );
                  },
                  icon: Image.asset(
                    'assets/icons/information.png',
                    height: SizeConfig.blockV! * 3.5,
                  ),
                ),
              ],
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
                // Section - Logo
                Image.asset(
                  'assets/icons/logo.png',
                  height: SizeConfig.blockV! * 25,
                ),
                const SizedBox(
                  height: 20,
                ),

                // Section - Rock, Paper, Scissors, and Description
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section - Rock
                        Text(
                          "Rock",
                          style: textLargeBoldCarGreen,
                        ),

                        // Section - Paper
                        Text(
                          "Paper",
                          style: textLargeBoldWhite,
                        ),

                        // Section - Scissors
                        Text(
                          "Scissors",
                          style: textLargeBoldCarGreen,
                        ),

                        // Section - Description
                        Text(
                          "Remember, victory is just a play away!",
                          style: textVerySmall300White,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Section - Exit and Let's Play button
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
                    // Section - Exit button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          SystemNavigator.pop();
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          backgroundColor: caribbeanGreen,
                        ),
                        child: Text(
                          "Exit",
                          style: textVerySmallBoldSmokyBlack,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),

                    // Section - Let's Play button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Get.to(
                            () => const ChooseOpponentView(),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(
                            vertical: 20,
                          ),
                          backgroundColor: caribbeanGreen,
                        ),
                        child: Text(
                          "Let's Play",
                          style: textVerySmallBoldSmokyBlack,
                        ),
                      ),
                    ),
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

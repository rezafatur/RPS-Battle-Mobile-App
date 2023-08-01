import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/modules/information/controllers/information_controller.dart';
import 'package:rps_battle/app/routes/app_pages.dart';
import 'package:rps_battle/core/theme/colors.dart';
import 'package:rps_battle/core/theme/text_theme.dart';
import 'package:rps_battle/core/utils/size_config.dart';
import 'package:url_launcher/url_launcher_string.dart';

class InformationView extends GetView<InformationController> {
  const InformationView({Key? key}) : super(key: key);

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
              title: Text(
                "Information",
                style: textVerySmallBoldWhite,
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
                // Section - Profile
                Image.asset(
                  'assets/icons/man.png',
                  height: SizeConfig.blockV! * 25,
                ),
                const SizedBox(
                  height: 20,
                ),

                // Section - M. Reza Faturrahman and Description
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Section - M.
                        Text(
                          "M.",
                          style: textLargeBoldCarGreen,
                        ),

                        // Section - Reza
                        Text(
                          "Reza",
                          style: textLargeBoldWhite,
                        ),

                        // Section - Faturrahman
                        Text(
                          "Faturrahman",
                          style: textLargeBoldCarGreen,
                        ),

                        // Section - Description
                        Text(
                          "The creator of RPS Battle",
                          style: textVerySmall300White,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),

          // Section - GitHub and LinkedIn button
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
                    // Section - GitHub button
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          launchUrlString(
                            "https://github.com/rezafatur",
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
                          'GitHub',
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
                          launchUrlString(
                            "https://www.linkedin.com/in/muhammad-reza-faturrahman",
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
                          "LinkedIn",
                          style: textVerySmallBoldSmokyBlack,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Section - Version
          Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text(
                "Version 1.0.1",
                style: textVerySmall300White,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

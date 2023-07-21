import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:rps_battle/core/theme/colors.dart';
import '../../../../core/theme/text_theme.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: smokyBlack,
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Section - Background Image
          Image.asset(
            'assets/images/homeComing.png',
            fit: BoxFit.cover,
          ),

          // Secttion - Text and Exit button
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Section - Coming Soon
                Text(
                  'Coming Soon',
                  style: textLargeBoldWhite,
                ),
                const SizedBox(
                  height: 20,
                ),

                // Section - Exit
                ElevatedButton(
                  onPressed: () {
                    SystemNavigator.pop();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 20,
                    ),
                    backgroundColor: caribbeanGreen,
                  ),
                  child: Text(
                    'Exit',
                    style: textVerySmallBoldSmokyBlack,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

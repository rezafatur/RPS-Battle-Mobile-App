import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rps_battle/app/data/models/onboarding_data.dart';
import 'package:rps_battle/app/modules/home/views/home_view.dart';
import 'package:rps_battle/core/theme/colors.dart';
import 'package:rps_battle/core/theme/text_theme.dart';
import '../../../../core/utils/size_config.dart';
import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  // Dot Indicator
  AnimatedContainer dotsIndicator({int? index}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color:
            controller.currentPage == index ? Color(0xFF04D976) : Colors.white,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: 10,
      curve: Curves.easeIn,
      width: controller.currentPage == index ? 20 : 10,
    );
  }

  @override
  Widget build(BuildContext context) {
    // Initializing the screen width and height
    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: smokyBlack,
      body: SafeArea(
        child: Column(
          children: [
            // Section image, title, and description
            Expanded(
              flex: 5,
              child: PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controller.pageController,
                onPageChanged: controller.onPageChanged,
                itemCount: controller.contents.length,
                itemBuilder: (context, i) {
                  Onboarding content = controller.contents[i];
                  return Padding(
                    padding: const EdgeInsets.all(50),
                    child: Column(
                      children: [
                        // Section - Image
                        Image.asset(
                          content.image,
                          height: SizeConfig.blockV! * 35,
                        ),

                        // Section - Title
                        Text(
                          content.title,
                          style: textLargeBoldWhite,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        // Section - Description
                        Text(
                          content.description,
                          style: textVerySmall300White,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            // Section skip, next, and let's play button
            Expanded(
              flex: 1,
              child: Obx(
                () => Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Section - Dots Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.contents.length,
                        (int index) => dotsIndicator(index: index),
                      ),
                    ),
                    controller.currentPage + 1 == controller.contents.length
                        ? // Section - Let's Play button
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: ElevatedButton(
                              onPressed: () {
                                controller.completeOnboarding();
                                Get.offAll(
                                  const HomeView(),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: caribbeanGreen,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 100,
                                  vertical: 20,
                                ),
                              ),
                              child: Text(
                                "Let's Play",
                                style: textVerySmallBoldSmokyBlack,
                              ),
                            ),
                          )
                        : // Section - Skip and Next button
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Section - Skip button
                                TextButton(
                                  onPressed: () {
                                    controller.pageController.jumpToPage(3);
                                  },
                                  child: Text(
                                    "Skip",
                                    style: textVerySmallBoldWhite,
                                  ),
                                ),

                                // Section - Next button
                                ElevatedButton(
                                  onPressed: controller.nextPage,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: caribbeanGreen,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    elevation: 0,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 30,
                                      vertical: 20,
                                    ),
                                  ),
                                  child: Text(
                                    "Next",
                                    style: textVerySmallBoldSmokyBlack,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

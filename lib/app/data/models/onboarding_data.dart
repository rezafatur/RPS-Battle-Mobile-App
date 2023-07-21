class Onboarding {
  final String title;
  final String description;
  final String image;

  Onboarding({
    required this.title,
    required this.description,
    required this.image,
  });
}

List<Onboarding> onboardingContents = [
  Onboarding(
    title: "Rock".toUpperCase(),
    description:
        "Unleash the power of the mighty Rock as you crush your opponents with unwavering strength!",
    image: "assets/images/onboardPic1.png",
  ),
  Onboarding(
    title: "Paper".toUpperCase(),
    description:
        "Craft intricate plans to outwit your rivals and wrap them up in your cleverness!",
    image: "assets/images/onboardPic2.png",
  ),
  Onboarding(
    title: "Scissors".toUpperCase(),
    description:
        "Slice through your opponents' defenses with lightning speed and precision!",
    image: "assets/images/onboardPic3.png",
  ),
  Onboarding(
    title: "RPS Battle".toUpperCase(),
    description:
        "Choose your path wisely, and let the games begin!\n\nMay your journey be filled with thrill, suspense, and endless fun. Remember, victory is just a play away!",
    image: "assets/images/onboardPic4.png",
  ),
];

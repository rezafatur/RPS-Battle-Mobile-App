import 'package:get/get.dart';

import '../modules/chooseOpponent/bindings/choose_opponent_binding.dart';
import '../modules/chooseOpponent/views/choose_opponent_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/information/bindings/information_binding.dart';
import '../modules/information/views/information_view.dart';
import '../modules/onboarding/bindings/onboarding_binding.dart';
import '../modules/onboarding/views/onboarding_view.dart';
import '../modules/vsComputer/bindings/vs_computer_binding.dart';
import '../modules/vsComputer/views/vs_computer_view.dart';
import '../modules/vsFriend/bindings/vs_friend_binding.dart';
import '../modules/vsFriend/views/vs_friend_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: _Paths.INFORMATION,
      page: () => const InformationView(),
      binding: InformationBinding(),
    ),
    GetPage(
      name: _Paths.CHOOSE_OPPONENT,
      page: () => const ChooseOpponentView(),
      binding: ChooseOpponentBinding(),
    ),
    GetPage(
      name: _Paths.VS_COMPUTER,
      page: () => const VsComputerView(),
      binding: VsComputerBinding(),
    ),
    GetPage(
      name: _Paths.VS_FRIEND,
      page: () => const VsFriendView(),
      binding: VsFriendBinding(),
    ),
  ];
}

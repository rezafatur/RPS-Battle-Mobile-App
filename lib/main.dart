import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app/routes/app_pages.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isOnboardingCompleted = prefs.getBool("onboarding_completed") ?? false;

  runApp(
    GetMaterialApp(
      title: "RPS Battle",
      theme: ThemeData(
        fontFamily: 'Montserrat',
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: isOnboardingCompleted ? Routes.HOME : Routes.ONBOARDING,
      getPages: AppPages.routes,
    ),
  );
}

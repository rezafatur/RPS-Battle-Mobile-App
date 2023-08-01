import 'dart:math';
import 'package:get/get.dart';

enum Choice {
  rock,
  paper,
  scissors,
}

class VsComputerController extends GetxController {
  final Rx<Choice> userChoice = Rx(Choice.rock);
  final Rx<Choice> computerChoice = Rx(Choice.rock);
  final RxBool isReady = RxBool(false);

  void setUserChoice(Choice choice) {
    userChoice.value = choice;
  }

  void setComputerChoice() {
    final random = Random().nextInt(3);
    computerChoice.value = Choice.values[random];
  }

  String getResult() {
    if (!isReady.value) return '';
    if (userChoice.value == computerChoice.value) {
      return "draw";
    } else if (userChoice.value == Choice.rock &&
            computerChoice.value == Choice.scissors ||
        userChoice.value == Choice.paper &&
            computerChoice.value == Choice.rock ||
        userChoice.value == Choice.scissors &&
            computerChoice.value == Choice.paper) {
      return "win";
    } else {
      return "lose";
    }
  }
}

import 'package:get/get.dart';

enum Choice {
  rock,
  paper,
  scissors,
}

class VsFriendController extends GetxController {
  final Rx<Choice> player1Choice = Rx(Choice.rock);
  final Rx<Choice> player2Choice = Rx(Choice.rock);
  final RxBool isReadyPlayer1 = RxBool(false);
  final RxBool isReadyPlayer2 = RxBool(false);

  void setPlayer1Choice(Choice choice) {
    player1Choice.value = choice;
  }

  void setPlayer2Choice(Choice choice) {
    player2Choice.value = choice;
  }

  String getResult() {
    if (!isReadyPlayer1.value) return '';
    if (!isReadyPlayer2.value) return '';
    if (player1Choice.value == player2Choice.value) {
      return "draw";
    } else if (player1Choice.value == Choice.rock &&
            player2Choice.value == Choice.scissors ||
        player1Choice.value == Choice.paper &&
            player2Choice.value == Choice.rock ||
        player1Choice.value == Choice.scissors &&
            player2Choice.value == Choice.paper) {
      return "Player 1 win";
    } else {
      return "Player 2 win";
    }
  }
}

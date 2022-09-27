import 'dart:async';
import 'package:get/get.dart';

class TimerController extends GetxController {
  //definindo a duração em segundos
  static const maxSeconds = 60;
  var seconds = maxSeconds;
  Timer? timer;

  /// inicioando o tempo 
  void startTimer({bool rest = true}) {
    if (rest) {
      resetTimer();
      update();
    }
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        seconds--;
        update();
      } else {
        stopTimer(rest: false);
        resetTimer();
      }
    });
  }
  /// pausando o tempo
  void stopTimer({bool rest = true}) {
    if (rest) {
      resetTimer();
      update();
    }
    timer?.cancel();
    update();
  }

  /// resetando o tempo
  void resetTimer() {
    seconds = maxSeconds;
    update();
  }

  /// vej o se o tempo está ativo
  bool isTimerRuning() {
    return timer == null ? false : timer!.isActive;
  }

  /// o tempo está completo ???
  bool isCompleted() {
    return seconds == maxSeconds || seconds == 0;
  }
}

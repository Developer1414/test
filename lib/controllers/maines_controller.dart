import 'package:flutter/material.dart';

class MinesController extends ChangeNotifier {
  double balance = 1500.0;
  double currentBet = 125.0;
  double profit = 0.0;
  double sliderMinesValue = 1.0;

  void changeSliderMines(double newValue) {
    sliderMinesValue = newValue;
    notifyListeners();
  }

  void multiplyBet() {
    currentBet = currentBet * 2;
    notifyListeners();
  }

  void divideBet() {
    currentBet = currentBet / 2;
    notifyListeners();
  }
}

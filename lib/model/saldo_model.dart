
import 'package:flutter/material.dart';

class SaldoModel extends ChangeNotifier {
  double value;
  double totalTrasnfer;
  double totalDeposit;

  SaldoModel({this.value = 0, this.totalTrasnfer = 0, this.totalDeposit = 0});

  void depositValue(double value) {
    this.value += value;
    totalDeposit += value;
    notifyListeners();
  }

  void transferValue(double value) {
    this.value -= value;
    totalTrasnfer += value;
    notifyListeners();
  }

  @override
  String toString() {
    return 'R\$ ${value.toStringAsFixed(2)}';
  }
}

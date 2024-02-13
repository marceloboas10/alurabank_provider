import 'package:flutter/material.dart';

class Transferencias extends ChangeNotifier {
  final List _transferencias = [];
  List get transferencias => _transferencias;

  adiciona(novaTransferencia) {
    transferencias.add(novaTransferencia);
    notifyListeners();
  }

  totalTransferencia() {
    double total = 0;
    transferencias;

    for (var element in transferencias) {
      total = element += element;
    }

    return total;
  }
}

import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'bloc.dart';

class Wallet {
  int _total;
  int get currentValue => _total;

  final _walletController = BehaviorSubject<int>.seeded(0);

  Stream<int> get walletStream => _walletController.stream;

  void addMoney(int amount) {
    _total = _total + amount;
    _walletController.sink.add(_total);
  }

  void spendMoney(int amount) {
    _total = _total - amount;
    _walletController.sink.add(_total);
  }

  void dispose() {
    _walletController.close();
  }
}
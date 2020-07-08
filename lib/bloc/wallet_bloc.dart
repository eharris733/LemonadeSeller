import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'bloc_provider.dart';

class WalletBloc implements BlocBase {
  int _value;

  WalletBloc(){
    _value = 0;
    _updateController.stream.listen(_handleLogic);
  }

  void _handleLogic(earned) {
    _inAdd.add(_value += earned);
  }

  BehaviorSubject<int> _valueController = BehaviorSubject<int>.seeded(0);
  StreamSink<int> get _inAdd => _valueController.sink;
  Stream<int> get getMoney => _valueController.stream;

  BehaviorSubject _updateController = BehaviorSubject();
  StreamSink get addMoney => _updateController.sink;


  void dispose() {
    _updateController.close();
    _valueController.close();
  }

}

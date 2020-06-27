import 'dart:async';
import 'package:rxdart/rxdart.dart';

import 'bloc_provider.dart';

class EconomyBloc implements BlocBase {
  int _counter;

  EconomyBloc() {
    _counter = 0;
    _actionController.stream.listen(_handleLogic);
  }

  void _handleLogic(data) {
    _counter = _counter + 1;
    _inAdd.add(_counter);
  }

  //
  // Stream to handle the counter
  //
  BehaviorSubject<int> _counterController = BehaviorSubject<int>();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;

  //
  // Stream to handle the action on the counter
  //
  BehaviorSubject _actionController = BehaviorSubject();
  StreamSink get incrementCounter => _actionController.sink;

  void dispose() {
    _actionController.close();
    _counterController.close();
  }

  // We want to stream out all the types of businesses we have

//  var bTypes = ['Lemonade','Icecream','Hotdogs'];
//  //the level of business person has unlocked with this button
//  int level;
//  GenericButton(int l){
//    level = l;
//  }
}

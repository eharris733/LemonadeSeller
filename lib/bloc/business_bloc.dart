import 'dart:async';
import 'package:lemonade_seller/data/business_data.dart';
import 'package:lemonade_seller/models/Business.dart';
import 'package:rxdart/rxdart.dart';

import 'bloc_provider.dart';

class BusinessBloc implements BlocBase {
  BusinessData data;
  List<Business> businesses;
  BehaviorSubject<List<Business>> _businessController;

  BusinessBloc() {
    businesses = BusinessData().getAllBusiness();
    _actionController.stream.listen(_handleLogic);
    _businessController = BehaviorSubject<List<Business>>.seeded(businesses);
  }

  StreamSink<List<Business>> get _inAdd => _businessController.sink;
  Stream<List<Business>> get getBusinesses => _businessController.stream;

  void _handleLogic(id) {
  var index = businesses.indexWhere((element) => element.id == id);
  businesses[index].value += businesses[index].earns;
   _inAdd.add(businesses);
  }

  BehaviorSubject _actionController = BehaviorSubject();
  StreamSink get incrementCounter => _actionController.sink;

  void dispose() {
    _actionController.close();
    _businessController.close();
  }
}

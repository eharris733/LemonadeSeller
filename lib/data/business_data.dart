import 'package:lemonade_seller/models/Business.dart';

// eventually this should be per user
// catalog of business types will feed these instances

class BusinessData {
  List<Business> _businesses;

  BusinessData() {
    _businesses = [
      Business(1,'Lemonade Stand',1,0,1),
      Business(2,'Hot Dog Stand',1,1,2)
    ];
  }

  // open new business
  // close businesses

  List<Business> getAllBusiness() {
    return _businesses;
  }
}
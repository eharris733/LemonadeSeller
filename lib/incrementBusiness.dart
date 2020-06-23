import 'package:rxdart/rxdart.dart';
class IncrementBusiness {
    var businessStreams = new List(14);
    void init(){
      for (int i = 0; i < businessStreams.length; i++){
        businessStreams[i] = BehaviorSubject.seeded(0);
      }
    }    
    makeMoney(int l){
      businessStreams[l].add(getStream(l).value + 1);
  }
  BehaviorSubject getStream(int l){
    return businessStreams[l];
  }
  }
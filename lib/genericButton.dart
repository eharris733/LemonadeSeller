import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'main.dart';

class GenericButton extends StatelessWidget{
  //array of business products
var bTypes = ['Lemonade','Icecream','Hotdogs'];
//the level of business person has unlocked with this button
int level;
GenericButton(int l){
    level = l;
}
 Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(      // When tapped, increment money.
      onTap: () {
        getIt<IncrementBusiness>().makeMoney(level);
      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(36.0),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(24.0),
        ),
        //child: Text("Lemonade Sold:  ${getIt<IncrementBusiness>().current}"),
        child:StreamBuilder(
          stream: getIt<IncrementBusiness>().getStream(level),
          builder: (BuildContext context, AsyncSnapshot snap){
            return Text('${bTypes[level]} Sold: ${snap.data}');
          },
        )
      ),
    );
  }
}



  class IncrementBusiness {
    BehaviorSubject _lemon_money = BehaviorSubject.seeded(0);
    BehaviorSubject _ice_money = BehaviorSubject.seeded(0);
    BehaviorSubject _dog_money = BehaviorSubject.seeded(0);
    Stream get streamLemon => _lemon_money.stream;
    int get currentLemon => _lemon_money.value;
    Stream get streamIce => _ice_money.stream;
    int get currentIce => _ice_money.value;
    Stream get streamDog => _dog_money.stream;
    int get currentDog => _dog_money.value;

    makeMoney(int l){
      if(l == 0) {
        _lemon_money.add(currentLemon + 1);
      }
      else if(l == 1){
        _ice_money.add(currentIce + 1);
      }
      else if(l==2){
        _dog_money.add(currentDog + 1);
      }
  }
  Stream getStream(int l){
    if (l == 0)
    {
      return streamLemon;
    }
    else if (l == 1)
    {
      return streamIce;
    }
    else if(l == 2)
    {
      return streamDog;
    }
    else return null;
  }
  }
  
  
  
  
  
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'main.dart';
import 'package:test_hello_world/incrementBusiness.dart';

class BusinessCard extends StatelessWidget{
  //array of business products
  // data that streams in about the business
var bTypes = ['Lemonade','Icecream','Hotdogs'];
//the level of business person has unlocked with this button
int level;
BusinessCard(int l){
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


  
  
  
  
  
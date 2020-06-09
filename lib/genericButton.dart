import 'package:flutter/material.dart';

class GenericButton extends StatefulWidget {


 createState() => _ButtonState();
  }



  class _ButtonState extends State<GenericButton>{
  int _money = 0;
  void _makeMoney(){
    setState(() {
      _money++;
    });
  }
  Widget build(BuildContext context) {
    // The GestureDetector wraps the button.
    return GestureDetector(
      // When tapped, increment money.
      onTap: () {
        _makeMoney();
      },
      // The custom button
      child: Container(
        padding: EdgeInsets.all(36.0),
        decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Text('Sold: $_money'),
      ),
    );
  }
  }
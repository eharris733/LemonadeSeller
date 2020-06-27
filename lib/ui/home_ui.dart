import 'package:flutter/material.dart';
import 'package:lemonade_seller/ui/business_card_ui.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),

        ),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    BusinessCard(),
                    BusinessCard(),
                  ]
              ),]
        ));
  }
}

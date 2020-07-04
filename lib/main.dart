import 'package:flutter/material.dart';
import 'package:test_hello_world/business_card.dart';
import 'package:get_it/get_it.dart';
import 'package:test_hello_world/incrementBusiness.dart';
import 'package:test_hello_world/wallet.dart';
import 'package:test_hello_world/walletUI.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<IncrementBusiness>(IncrementBusiness());
  getIt.registerSingleton<Wallet>(Wallet());
  getIt<IncrementBusiness>().init();
}

void main() {
  runApp(MainPage());
  setup();
}

class MainPage extends StatelessWidget {
  Widget build(BuildContext context) {
    final title = 'Lemonade Seller: The First Drink is Free!';

    return MaterialApp(
      title: title,
      home: MyHomePage(title: title),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body:
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        WalletUI(),
                        // print an array of businesses with state
                        BusinessCard(0),
                        BusinessCard(1),
                        BusinessCard(2),
                      ]
                  ),
                ]
            )
    );
  }
}

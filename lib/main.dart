import 'package:flutter/material.dart';
import 'package:test_hello_world/genericButton.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<IncrementBusiness>(IncrementBusiness());
}

void main () {
  runApp(MainPage());
  setup();
} 


class MainPage extends StatelessWidget{
  Widget build(BuildContext context) {
    final title = 'Sell Your Car';

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
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
        Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[GenericButton(0),
        GenericButton(1),
        GenericButton(2),]
        ),]
    ));
  }
}


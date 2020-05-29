import 'package:flutter/material.dart';
import 'package:test_hello_world/genericButton.dart';

void main ()=> runApp(MainPage());


class MainPage extends StatelessWidget{
  Widget build(BuildContext context) {
    final title = 'Sell Lemonade';

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
      body: Center(child: GenericButton()),
    );
  }
}


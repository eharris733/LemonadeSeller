import 'package:flutter/material.dart';
import 'bloc/economy_bloc.dart';
import 'bloc/bloc_provider.dart';
import 'ui/home_ui.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Streams Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<EconomyBloc>(
        bloc: EconomyBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget{
  Widget build(BuildContext context) {
    final title = 'Lemonade Seller';

    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MyHomePage(title: title),
    );
  }
}

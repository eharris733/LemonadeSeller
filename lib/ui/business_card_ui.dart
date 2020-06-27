import 'package:flutter/material.dart';
import 'package:lemonade_seller/bloc/bloc_provider.dart';
import 'package:lemonade_seller/bloc/economy_bloc.dart';

class BusinessCard extends StatelessWidget{
  Widget build(BuildContext context) {
    final EconomyBloc bloc = BlocProvider.of<EconomyBloc>(context);

    // The GestureDetector wraps the button.
    return GestureDetector(      // When tapped, increment money.
      onTap: () {
        bloc.incrementCounter.add(null);
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
            stream: bloc.outCounter,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot){
              return Text('You hit me: ${snapshot.data} times');
            }
          )
      ),
    );
  }
}






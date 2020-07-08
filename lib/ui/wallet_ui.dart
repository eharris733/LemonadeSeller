import 'package:flutter/material.dart';
import 'package:lemonade_seller/bloc/bloc_provider.dart';
import 'package:lemonade_seller/bloc/wallet_bloc.dart';

class Wallet extends StatelessWidget {

  Widget build(BuildContext context) {
    final WalletBloc _wallet = BlocProvider.of<WalletBloc>(context);

    return Container(
      child: StreamBuilder(
        stream: _wallet.getMoney,
        builder:  (context, AsyncSnapshot<int> snapshot) {
          return Text('Money: ${snapshot.data}');
        }
      )
    );
  }
}

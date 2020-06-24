import 'package:flutter/material.dart';
import 'package:test_hello_world/wallet.dart';
import 'main.dart';
import 'package:test_hello_world/incrementBusiness.dart';

class WalletUI extends StatelessWidget {
  Widget build(BuildContext context) {
    return Container(
      height: 30,
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(color: Colors.blue[500]),
        child: StreamBuilder<int>(
          stream: getIt<Wallet>().walletStream,
          builder: (BuildContext context, AsyncSnapshot snap){
            return Text('Funds: ${snap.data}');
          },
        )
    );
  }
}







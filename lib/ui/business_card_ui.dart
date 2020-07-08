import 'package:flutter/material.dart';
import 'package:lemonade_seller/bloc/bloc_provider.dart';
import 'package:lemonade_seller/bloc/business_bloc.dart';
import 'package:lemonade_seller/bloc/wallet_bloc.dart';
import 'package:lemonade_seller/models/Business.dart';

class BusinessCard extends StatelessWidget {
  Widget build(BuildContext context) {
    final BusinessBloc _business = BlocProvider.of<BusinessBloc>(context);
    final WalletBloc _wallet = BlocProvider.of<WalletBloc>(context);

    List<Widget> renderWidgets(businesses) {
      return businesses.map<Widget>((biz) {
        return new GestureDetector(
          onTap: () {
            _business.incrementCounter.add(biz.id);
            _wallet.addMoney.add(biz.earns);
          },
          child: Row(
            children: [
              Text(biz.name),
              Container(
                padding: EdgeInsets.all(36.0),
                decoration: BoxDecoration(
                  color: Colors.lightGreen,
                  borderRadius: BorderRadius.circular(24.0),
                ),
                child: Text('Value ${biz.value}'),
              ),
            ]
          )
        );
      }).toList();
    }

    return Container(
        child: new StreamBuilder(
            stream: _business.getBusinesses,
            builder: (context, AsyncSnapshot<List<Business>> snapshot) {
              var businesses = snapshot.data;
              return Column(
                  children: renderWidgets(businesses)
              );
            })
    );
  }
}




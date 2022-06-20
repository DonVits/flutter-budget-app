import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/models/transaction.dart';

import './models/transaction.dart';
import './transaction-card.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> userTransactions;

  TransactionList(this.userTransactions);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: ListView(children: [
        ...userTransactions.map((transaction) {
          return TransactionCard(transaction);
        }),
      ]),
    );
  }
}

import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import './models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransactions = [
    Transaction(
        amount: 100.95, date: DateTime.now(), id: 't-001', title: 'New Shoes'),
    Transaction(amount: 99.50, date: DateTime.now(), id: 't-001', title: 'TV'),
    Transaction(
        amount: 499.99, date: DateTime.now(), id: 't-001', title: 'PS5'),
  ];

  void _addTransaction(String title, double amount) {
    final newTransaction = Transaction(
      title: title,
      amount: amount,
      date: DateTime.now(),
      id: DateTime.now().toString(),
    );

    setState(() {
      _userTransactions.add(newTransaction);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addTransaction),
        TransactionList(_userTransactions),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'models/transaction.dart';

import 'package:intl/intl.dart';

class TransactionCard extends StatelessWidget {
  final Transaction transaction;

  TransactionCard(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        child: Row(
          children: [
            Container(
              width: 120,
              margin: EdgeInsets.all(15),
              child: Text(
                '\$${transaction.amount}',
                style: TextStyle(fontSize: 25),
              ),
            ),
            Container(
              width: 200,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Text(
                      'ID: ${transaction.id}',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Text(
                      'Title: ${transaction.title}',
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    width: double.infinity,
                    child: Text(
                      'Date of transaction: ${DateFormat.yMMMMEEEEd().format(transaction.date)}',
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        height: 120,
      ),
    );
  }
}

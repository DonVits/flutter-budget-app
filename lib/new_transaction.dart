import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
            decoration: InputDecoration(label: Text('Title')),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(label: Text('Price')),
            controller: amountController,
            keyboardType: TextInputType.number,
          ),
          FlatButton(
              onPressed: () {
                addTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              child: Text('Add Transaction'))
        ],
      ),
    );
  }
}

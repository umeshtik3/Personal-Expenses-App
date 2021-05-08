import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:personalexpensesapp/controller/TransactionController.dart';

// ignore: must_be_immutable
class NewTransaction extends StatelessWidget {
  final Function addtx;

  NewTransaction({this.addtx});

  TransactionController txController = Get.put(TransactionController());

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: txController.titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            TextField(
              keyboardType: TextInputType.number,
              maxLength: 2,
              controller: txController.amountController,
              decoration: InputDecoration(labelText: 'Amount'),
            ),
            TextButton(
                onPressed: () {
                  txController.addNewTransaction();
                 Navigator.pop(context);
                },
                child: Text('Add Transaction'))
          ],
        ),
      ),
    );
  }
}
